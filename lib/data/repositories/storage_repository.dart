import 'package:grofast/utils/instances/app_instances.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageRepository{
  Future<void> setToken(String token)async{
    await myLocator<SharedPreferences>().setString('token', token);
  }

  String? getToken(){
    final String? token = myLocator<SharedPreferences>().getString('token');
    return token;
  }
}