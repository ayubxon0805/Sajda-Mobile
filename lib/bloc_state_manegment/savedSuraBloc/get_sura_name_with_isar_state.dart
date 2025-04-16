part of 'get_sura_name_with_isar_bloc.dart';

class GetSuraNameWithIsarState {}

class GetSuraNameWithIsarInitial extends GetSuraNameWithIsarState {}

class StartSuraNameWithIsarState extends GetSuraNameWithIsarState {
  final List<User>? user;
  StartSuraNameWithIsarState(this.user);
}

class ReloadingSuraNameWithIsarState extends GetSuraNameWithIsarState {}
