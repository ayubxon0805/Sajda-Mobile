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
  bool hasPermission = false;

  Animation<double>? animation;
  AnimationController? _animationController;
  double begin = 0.0;

  Future<void> getPermission() async {
    try {
      if (await Permission.location.serviceStatus.isEnabled) {
        var status = await Permission.location.status;
        if (status.isGranted) {
          setState(() {
            hasPermission = true;
          });
        } else {
          var result = await Permission.location.request();
          setState(() {
            hasPermission = (result == PermissionStatus.granted);
          });
        }
      } else {
        // Location xizmati o'chirilgan
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Location xizmati o\'chirilgan'),
            content: const Text(
                'Iltimos, qurilmangizning Location xizmatini yoqing'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    } catch (e) {
      print('Permission error: $e');

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Xatolik yuz berdi: $e')),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    animation = Tween(begin: 0.0, end: 0.0).animate(_animationController!);
    getPermission();
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: FutureBuilder(
        future: getPermission(),
        builder: (context, snapshot) {
          if (hasPermission) {
            return StreamBuilder(
              stream: FlutterQiblah.qiblahStream,
              builder: (context, AsyncSnapshot<QiblahDirection> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Container(
                      alignment: Alignment.center,
                      child: const CircularProgressIndicator(
                        color: Colors.white,
                      ));
                }

                if (snapshot.hasError) {
                  return Center(
                    child: Text('Xatolik yuz berdi: ${snapshot.error}'),
                  );
                }

                if (!snapshot.hasData) {
                  return const Center(
                    child: Text(' Kechirasiz qandaydir muammo bor'),
                  );
                }

                final qiblahDirection = snapshot.data;
                animation = Tween(
                        begin: begin,
                        end: (qiblahDirection!.qiblah * (pi / 180) * -1))
                    .animate(_animationController!);

                begin = (qiblahDirection.qiblah * (pi / 180) * -1);
                _animationController!.forward(from: 0);

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
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            height: 300,
                            child: AnimatedBuilder(
                              animation: animation!,
                              builder: (context, child) => Transform.rotate(
                                  angle: animation!.value,
                                  child:
                                      Image.asset('assets/images/qibla.png')),
                            ))
                      ]),
                );
              },
            );
          } else {
            return const Scaffold();
          }
        },
      )),
    );
  }
}
