import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:grofast/data/models/user_model.dart';
import 'package:grofast/data/repositories/authorization_repository.dart';
import 'package:grofast/utils/instances/app_instances.dart';

class AuthorizationViewModel extends ChangeNotifier{

  bool isInvalidPassword=false;
  bool isInvalidEmail=false;


  addUser(UserModel newUser)=>myLocator<AuthorizationRepository>().addUser(newUser);

  checkInvalidity(String email,String password){
    isInvalidEmail=!EmailValidator.validate(email);
    isInvalidPassword=false;
    if(password.isEmpty){
      isInvalidPassword=true;
    }
    notifyListeners();
  }

}