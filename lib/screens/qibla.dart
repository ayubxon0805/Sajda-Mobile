import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:permission_handler/permission_handler.dart';

class QiblahScreen extends StatefulWidget {
  const QiblahScreen({super.key});

  @override
  State<QiblahScreen> createState() => _QiblahScreenState();
}

class _QiblahScreenState extends State<QiblahScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  double begin = 0.0;

  late Future<bool> _permissionFuture;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation = Tween(begin: 0.0, end: 0.0).animate(_animationController);

    _permissionFuture = _checkPermissions();
  }

  Future<bool> _checkPermissions() async {
    try {
      if (!await Permission.location.serviceStatus.isEnabled) {
        await _showLocationServiceDialog();
        return false;
      }

      final status = await Permission.location.status;
      if (status.isGranted) {
        return true;
      }

      final result = await Permission.location.request();
      return result == PermissionStatus.granted;
    } catch (e) {
      debugPrint('Permission error: $e');
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Xatolik yuz berdi: $e')));
      }
      return false;
    }
  }

  Future<void> _showLocationServiceDialog() async {
    await showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('Location xizmati o\'chirilgan'),
            content: const Text(
              'Iltimos, qurilmangizning Location xizmatini yoqing',
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('OK'),
              ),
            ],
          ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder<bool>(
          future: _permissionFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            if (snapshot.hasError || !(snapshot.data ?? false)) {
              return const Center(
                child: Text("Ruxsat berilmadi yoki xatolik yuz berdi."),
              );
            }

            return StreamBuilder<QiblahDirection>(
              stream: FlutterQiblah.qiblahStream,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (snapshot.hasError) {
                  return Center(
                    child: Text("Xatolik yuz berdi: ${snapshot.error}"),
                  );
                }

                if (!snapshot.hasData) {
                  return const Center(
                    child: Text("Kechirasiz, qandaydir muammo bor."),
                  );
                }

                final qiblahDirection = snapshot.data!;
                final end = (qiblahDirection.qiblah * (pi / 180) * -1);

                _animation = Tween(
                  begin: begin,
                  end: end,
                ).animate(_animationController);
                begin = end;
                _animationController.forward(from: 0);

                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${qiblahDirection.direction.toInt()}°",
                        style: TextStyle(
                          fontSize: 30,
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  ? Colors.black
                                  : Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 300,
                        child: AnimatedBuilder(
                          animation: _animation,
                          builder:
                              (context, child) => Transform.rotate(
                                angle: _animation.value,
                                child: Image.asset('assets/images/qibla.png'),
                              ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
