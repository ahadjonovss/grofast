import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:grofast/data/models/user_model.dart';
import 'package:grofast/data/repositories/authorization_repository.dart';
import 'package:grofast/data/repositories/storage_repository.dart';
import 'package:grofast/ui/authorization/widgets/loading_dialog.dart';
import 'package:grofast/utils/instances/app_instances.dart';
import 'package:grofast/utils/routes/app_routes.dart';

class AuthorizationViewModel extends ChangeNotifier{

  UserModel? newUser;
  String? token;
  bool isInvalidPassword=false;
  bool isInvalidEmail=false;


  signUp(context) async{
    bool isRegistred = await myLocator<AuthorizationRepository>().signUp(newUser!);
    if(isRegistred==true){
      loadingDialog(context,"Signing Up");
      Future.delayed(const Duration(seconds: 2)).then((value) => Navigator.pushNamedAndRemoveUntil(context, RouteName.mainPage, (route) => false));
    }else{
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Current email has already used"),duration: Duration(seconds: 2),));
    }
  }

  signIn(context,{required email,required password}) async{
    String message = await myLocator<AuthorizationRepository>().signIn(email.trim(), password.trim());
    if(message=="Welcome"){
      loadingDialog(context,"Signing In");
      Future.delayed(const Duration(seconds: 2)).then((value) => Navigator.pushNamedAndRemoveUntil(context, RouteName.mainPage, (route) => false));
    }else{
      ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: Text(message),duration: const Duration(seconds: 2),));
    }

  }



  initNewUser(String email, String password,String name){
    newUser = UserModel(name: name, password: password, email: email, orders: []);
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

  getToken(){
    token=StorageRepository.getToken();
  }





}