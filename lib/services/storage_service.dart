import 'package:get_storage/get_storage.dart';

class StorageService {
  final _box = GetStorage();

  // Store a value
  Future<void> write(String key, dynamic value) async {
    await _box.write(key, value);
  }

  // Read a value
  T? read<T>(String key) {
    return _box.read<T>(key);
  }

  // Check if a key exists
  bool hasData(String key) {
    return _box.hasData(key);
  }

  // Remove a single key
  Future<void> remove(String key) async {
    await _box.remove(key);
  }

  // Clear all data
  Future<void> erase() async {
    await _box.erase();
  }
}
