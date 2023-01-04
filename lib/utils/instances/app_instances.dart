import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:grofast/data/repositories/authorization_repository.dart';
import 'package:grofast/data/repositories/storage_repository.dart';
import 'package:grofast/view_models/authorization_view_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

final myLocator = GetIt.instance;

setUpLocators()  {
  myLocator.registerLazySingleton(() => FirebaseFirestore.instance);
  myLocator.registerLazySingleton(() => AuthorizationRepository());
  myLocator.registerLazySingleton(() => AuthorizationViewModel());
  myLocator.registerLazySingleton(() => StorageRepository.getInstance());
}