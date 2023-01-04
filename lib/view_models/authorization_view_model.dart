import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:grofast/data/models/user_model.dart';
import 'package:grofast/data/repositories/authorization_repository.dart';
import 'package:grofast/utils/instances/app_instances.dart';

class AuthorizationViewModel extends ChangeNotifier{

  UserModel? currentUser;
  bool isInvalidPassword=false;
  bool isInvalidEmail=false;


  addUser()=>myLocator<AuthorizationRepository>().addUser(currentUser!);

  initCurrentUser(String email, String password,String name){
    currentUser = UserModel(name: name, password: password, email: email, orders: []);
    notifyListeners();
  }

  checkInvalidity(String email,String password){
    isInvalidEmail=!EmailValidator.validate(email);
    isInvalidPassword=false;
    if(password.isEmpty){
      isInvalidPassword=true;
    }
    notifyListeners();
  }

}