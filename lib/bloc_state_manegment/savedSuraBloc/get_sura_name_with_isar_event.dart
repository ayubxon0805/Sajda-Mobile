part of 'get_sura_name_with_isar_bloc.dart';

class GetSuraNameWithIsarEvent {}

class StartSuraNameWithIsarEvent extends GetSuraNameWithIsarEvent {}
class RemoveSuraNameWithIsarEvent extends GetSuraNameWithIsarEvent {
  final int id;
  RemoveSuraNameWithIsarEvent(this.id);
}
