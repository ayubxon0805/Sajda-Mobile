part of 'disable_sura_bloc.dart';

class DisableSuraState {}

class DisableSuraInitial extends DisableSuraState {}

class StartDisabledSuraState extends DisableSuraState {
  final List<int> index;
  StartDisabledSuraState(this.index);
}

class RemoveDisabledSuraState extends DisableSuraState {}
class AddDisabledSuraState extends DisableSuraState {}

