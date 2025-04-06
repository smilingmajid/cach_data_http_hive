import 'package:hive/hive.dart';

class CacheManager {
  final String boxName;

  CacheManager(this.boxName);

  Future<void> init() async {
    if (!Hive.isBoxOpen(boxName)) {
      await Hive.openBox(boxName);
    }
  }

  Future<void> put(String key, dynamic value) async {
    final box = Hive.box(boxName);
    await box.put(key, value);
  }

  dynamic get(String key) {
    final box = Hive.box(boxName);
    return box.get(key);
  }

  Future<void> clear() async {
    final box = Hive.box(boxName);
    await box.clear();
  }
}
