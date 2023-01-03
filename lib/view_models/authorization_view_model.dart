import 'package:flutter/material.dart';
import 'package:grofast/data/models/user_model.dart';
import 'package:grofast/data/repositories/authorization_repository.dart';
import 'package:grofast/utils/instances/app_instances.dart';

class AuthorizationViewModel extends ChangeNotifier{


  addUser(UserModel newUser)=>myLocator<AuthorizationRepository>().addUser(newUser);

}