import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sajda_app/models/isar_sura/user.dart';

class IsarService {
  late final Future<Isar> db;
  IsarService() {
    db = openDB();
  }

  Future<void> saveSura(User user) async {
    final isar = await db;
    isar.writeTxnSync(() => isar.users.putSync(user));
  }

  Future<List<User>> getAllSura() async {
    final isar = await db;
    return isar.users.where().findAll();
  }

  getSuraWithId(Id id) async {
    final isar = await db;
    return isar.users.get(id);
  }

  Future<bool> removeSura(int id) async {
    final isar = await db;
    return await isar.writeTxn(() async => await isar.users.delete(id));
  }

  /////////////////////////
  Future<Isar> openDB() async {
    final dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [UserSchema],
        inspector: true,
        directory: dir.path,
      );
    }

    return Future.value(Isar.getInstance());
  }
}
