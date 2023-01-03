import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grofast/utils/constants/colors.dart';

import '../../utils/constants/text_styles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.045,
                width: MediaQuery.of(context).size.height*0.07,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: AppColors.C_777777.withOpacity(0.5))
                ),
                child: Center(child: Icon(Icons.arrow_back,color: AppColors.C_777777,size: 18,),),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.07),
              Text("Welcome back\nto Grofast!",style: TextStyles.defaultStyle,)
              
            ],
          ),
        ),
      ),
    );
  }
}
