import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:grofast/data/models/user_model.dart';
import 'package:grofast/data/repositories/storage_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../utils/instances/app_instances.dart';

class AuthorizationRepository {

  Future<bool> signUp(UserModel newUser) async {
    var isHasUser = await myLocator<FirebaseFirestore>()
        .collection("users")
        .where("email", isEqualTo: newUser.email)
        .get();
    if (isHasUser.docs.isEmpty) {
      DocumentReference docId =
      await myLocator<FirebaseFirestore>().collection("users").add(
          newUser.toJson());
      await myLocator<FirebaseFirestore>()
          .collection("users")
          .doc(docId.id)
          .update({"userId": docId.id}).then((value) async {
        await StorageRepository.setToken(docId.id);

      });
      return true;
    }
    return false;
  }


  Future<String> signIn(String email, String password) async {
    var user = await myLocator<FirebaseFirestore>().collection("users").where(
        "email", isEqualTo: email).get();
    if (user.docs.isEmpty) {
      return "Account not found";
    }
    else if (user.docs[0]["password"] != password) {
      return "Incorrect Password";
    } else {
      await StorageRepository.setToken(user.docs[0]["userId"]);
      return "Welcome";
    }
  }
}

