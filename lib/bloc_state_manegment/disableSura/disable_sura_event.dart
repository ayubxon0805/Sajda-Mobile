part of 'disable_sura_bloc.dart';

class DisableSuraEvent {}

class StartDisableSuraEvent extends DisableSuraEvent {}

class RemoveDisabledSuraEvent extends DisableSuraEvent {
  final int id;

  RemoveDisabledSuraEvent(this.id);
}

class AddDisabledSuraEvent extends DisableSuraEvent {
  final User user;

  AddDisabledSuraEvent(this.user);
}
