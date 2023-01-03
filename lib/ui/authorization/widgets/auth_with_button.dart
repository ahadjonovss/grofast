import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image.dart';

class AuthWithButton extends StatelessWidget {
  String icon;
  AuthWithButton({required this.icon,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      child: Container(
        height: MediaQuery.of(context).size.height*0.08,
        width: MediaQuery.of(context).size.height*0.08,
        decoration: BoxDecoration(
            color: AppColors.C_F1F4F3,
            borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height*0.02)
        ),
        child: Center(child: Image.asset(icon,width: 20,),),
      ),
    );
  }
}
