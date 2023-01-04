import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../../utils/constants/colors.dart';
import '../../../view_models/authorization_view_model.dart';

class AuthButton extends StatelessWidget {
  String email;
  String password;
  String name="";
  String title;
  AuthButton({this.name="",required this.password,required this.email,required this.title,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: (){
        context.read<AuthorizationViewModel>().checkInvalidity(email, password);
        if(name.isNotEmpty){
         context.read<AuthorizationViewModel>().initCurrentUser(email, password, name);
         context.read<AuthorizationViewModel>().addUser(context);

        }
      },
      child: Container(
        height: MediaQuery.of(context).size.height*0.08,
        width: MediaQuery.of(context).size.width,
        decoration:  BoxDecoration(
            gradient:  const LinearGradient(
                colors: [
                  AppColors.C_26AD71,
                  AppColors.C_32CB4B
                ]
            ),
            borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height*0.2)
        ),
        child:  Center(child: Text(title,style: const TextStyle(color: Colors.white,fontSize: 16),)),
      ),
    );
  }
}
