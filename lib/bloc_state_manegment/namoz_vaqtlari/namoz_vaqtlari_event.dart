part of 'namoz_vaqtlari_bloc.dart';

class NamozVaqtlariEvent {}

class GetNamozVaqtiEvent extends NamozVaqtlariEvent {
  final String location;

  GetNamozVaqtiEvent(this.location);
}
