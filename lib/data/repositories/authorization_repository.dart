import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:grofast/data/models/user_model.dart';
import '../../utils/instances/app_instances.dart';

class AuthorizationRepository{

  Future<void> addUser(UserModel newUser)async{
      DocumentReference docId = await myLocator<FirebaseFirestore>().collection("users").add(newUser.toJson());
      await myLocator<FirebaseFirestore>().collection("users").doc(docId.id).update({
        "userId":docId.id
      });
}

  // Future<bool> logIn(String email,String password) async {
  //   var user= await myLocator<FirebaseFirestore>().collection("users").where("email",isEqualTo: email).get();
  //   if(user==null){
  //     return false;
  //   }else{
  //     if(user["password"]==password);
  //   }
  // }

}