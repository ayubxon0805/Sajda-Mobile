part of 'namoz_vaqtlari_bloc.dart';

class NamozVaqtlariState {}

class NamozVaqtlariInitial extends NamozVaqtlariState {}

class SuccesNamozVaqtlariState extends NamozVaqtlariState {
  final NamozTime time;

  SuccesNamozVaqtlariState(this.time);
}

class ProccesNamozVaqtlariState extends NamozVaqtlariState {}

class FailureNamozVaqtlariState extends NamozVaqtlariState {}
