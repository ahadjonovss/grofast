import 'package:grofast/utils/instances/app_instances.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageRepository{
  static StorageRepository? _storage;
  static SharedPreferences? _sharedPreferences;

  static Future<StorageRepository> getInstance() async {
    if (_storage == null) {
      var newStorage = StorageRepository._();
      await newStorage._init();
      _storage = newStorage;
    }
    return _storage!;
  }

  StorageRepository._();

  Future _init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }
  static Future<void> setToken(String token)async{
    await _sharedPreferences!.setString('token', token);
  }

  static String? getToken(){
    final String? token = _sharedPreferences!.getString('token');
    return token;
  }
}