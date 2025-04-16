import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sajda_app/models/namoz_time_model.dart';

part 'namoz_vaqtlari_event.dart';
part 'namoz_vaqtlari_state.dart';

class NamozVaqtlariBloc extends Bloc<NamozVaqtlariEvent, NamozVaqtlariState> {
  NamozVaqtlariBloc() : super(NamozVaqtlariInitial()) {
    on<GetNamozVaqtiEvent>(getTime);
  }

  Future<void> getTime(
    GetNamozVaqtiEvent event,
    Emitter<NamozVaqtlariState> emmit,
  ) async {
    emmit(ProccesNamozVaqtlariState());

    try {
      final dio = Dio();
      final response = await dio.get(
        'https://islomapi.uz/api/present/day?region=${event.location}',
      );

      if (response.statusCode == 200) {
        NamozTime time = NamozTime.fromJson(response.data);

        emmit(SuccesNamozVaqtlariState(time));
      }
    } catch (e) {}
  }
}
