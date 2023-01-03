import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../utils/constants/colors.dart';

class ArrowBack extends StatelessWidget {
  const ArrowBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: (){
        Navigator.pop(context);
      },
      child: Container(
        height: MediaQuery.of(context).size.height*0.045,
        width: MediaQuery.of(context).size.height*0.07,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: AppColors.C_777777.withOpacity(0.5))
        ),
        child: const Center(child: Icon(Icons.arrow_back,color: AppColors.C_777777,size: 18,),),
      ),
    );
  }
}
