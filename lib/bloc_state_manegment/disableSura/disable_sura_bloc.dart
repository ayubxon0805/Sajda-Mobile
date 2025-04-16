import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sajda_app/models/isar_sura/user.dart';
import 'package:sajda_app/services/iser_service/isar_service.dart';

part 'disable_sura_event.dart';
part 'disable_sura_state.dart';

class DisableSuraBloc extends Bloc<DisableSuraEvent, DisableSuraState> {
  DisableSuraBloc() : super(DisableSuraInitial()) {
    on<StartDisableSuraEvent>(disableIsarSura);
    on<RemoveDisabledSuraEvent>(removeSavedIsarSura);
    on<AddDisabledSuraEvent>(addSavedIsarSura);
  }

  Future<void> disableIsarSura(
    StartDisableSuraEvent event,
    Emitter<DisableSuraState> emmit,
  ) async {
    List<User> newUser = await IsarService().getAllSura();
    List<int> indexes = [];
    for (var user in newUser) {
      indexes.add(user.id ?? 0);
    }
    emmit(StartDisabledSuraState(indexes));
  }

  //////*-*-*-*-*-*-*-*-*-*-*-*-*-*///////

  Future<void> removeSavedIsarSura(
    RemoveDisabledSuraEvent event,
    Emitter<DisableSuraState> emmit,
  ) async {
    await IsarService().removeSura(event.id);
    emmit(RemoveDisabledSuraState());
  }

  Future<void> addSavedIsarSura(
    AddDisabledSuraEvent event,
    Emitter<DisableSuraState> emmit,
  ) async {
    await IsarService().saveSura(event.user);
    emmit(AddDisabledSuraState());
  }
}
