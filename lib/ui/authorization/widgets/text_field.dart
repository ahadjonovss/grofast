import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image.dart';

class CustomTextField extends StatelessWidget {
  TextEditingController controller;
  String icon;
  CustomTextField({required this.controller,required this.icon, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.08,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.height*0.02),
      decoration: BoxDecoration(
          color: AppColors.C_194B38.withOpacity(0.06),
          borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height*0.022)
      ),
      child: Center(
        child: Row(
          children: [
            Image.asset(icon,width: 20,height: 20,),
            const SizedBox(width: 20,),
             Expanded(child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                  border: InputBorder.none
              ),
            ))

          ],
        ),
      ),
    );
  }
}
