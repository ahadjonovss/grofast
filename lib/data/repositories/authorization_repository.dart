import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:grofast/data/models/user_model.dart';
import '../../utils/instances/app_instances.dart';

class AuthorizationRepository{

  Future<bool> addUser(UserModel newUser)async{
    var isHasUser = await myLocator<FirebaseFirestore>().collection("users").where("email",isEqualTo: newUser.email).get();
    if(isHasUser.docs.isEmpty){
      DocumentReference docId =
      await myLocator<FirebaseFirestore>().collection("users").add(newUser.toJson());
      await myLocator<FirebaseFirestore>()
          .collection("users")
          .doc(docId.id)
          .update({"userId": docId.id}).then((value) async {
        // await myLocator<FirebaseFirestore>().saveString("token", docId.id);
      });
      return true;
    }
      return false;
    }
}

  // Future<bool> logIn(String email,String password) async {
  //   var user= await myLocator<FirebaseFirestore>().collection("users").where("email",isEqualTo: email).get();
  //   if(user==null){
  //     return false;
  //   }else{
  //     if(user["password"]==password);
  //   }
  // }

