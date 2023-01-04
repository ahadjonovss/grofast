import 'package:flutter/material.dart';
import 'package:grofast/ui/authorization/widgets/arrow_back.dart';
import 'package:grofast/ui/authorization/widgets/auth_button.dart';
import 'package:grofast/ui/authorization/widgets/auth_with_button.dart';
import 'package:grofast/ui/authorization/widgets/text_field.dart';
import 'package:grofast/utils/constants/colors.dart';
import 'package:grofast/utils/constants/image.dart';
import 'package:grofast/utils/routes/app_routes.dart';
import 'package:grofast/view_models/authorization_view_model.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:provider/provider.dart';
import '../../utils/constants/text_styles.dart';

class LoginPage extends StatelessWidget {
   LoginPage({Key? key}) : super(key: key);

  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(30),
              child: Consumer<AuthorizationViewModel>(
                builder: (context, value, child) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ArrowBack(),
                    SizedBox(height: MediaQuery.of(context).size.height*0.07),
                    Text("Welcome back\nto Grofast!",style: TextStyles.defaultStyle,),
                    SizedBox(height: MediaQuery.of(context).size.height*0.06),
                    Text("Email Adress",style: TextStyles.fs14Cgrey),
                    SizedBox(height: MediaQuery.of(context).size.height*0.02),
                    CustomTextField(controller: emailController,icon: AppImages.email,),
                    SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                    Visibility(
                        visible: value.isInvalidEmail,
                        child: const Text("Invalid email",style: TextStyle(color: Colors.red),)),
                    SizedBox(height: MediaQuery.of(context).size.height*0.02),
                    Text("Password",style: TextStyles.fs14Cgrey),
                    SizedBox(height: MediaQuery.of(context).size.height*0.02),
                    CustomTextField(controller: passwordController,icon: AppImages.lock,),
                    SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                    Visibility(
                        visible:value.isInvalidPassword,
                        child:  const Text("Invalid password",style: TextStyle(color: Colors.red),)),
                    SizedBox(height: MediaQuery.of(context).size.height*0.03),
                    AuthButton(title: "Sign In",password: passwordController.text,email: emailController.text),
                    SizedBox(height: MediaQuery.of(context).size.height*0.02),
                    Align(
                        alignment: Alignment.center,
                        child: Text("or with",style: TextStyles.fs16Cblack,)),
                    SizedBox(height: MediaQuery.of(context).size.height*0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AuthWithButton(icon: AppImages.apple),
                        AuthWithButton(icon: AppImages.google),
                        AuthWithButton(icon: AppImages.twitter),
                        AuthWithButton(icon: AppImages.facebook),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.03),
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("New User? ",style: TextStyles.fs14Cgrey,),
                          InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, RouteName.registerPage);
                              },
                              child: const Text("Sign In",style: TextStyle(color: AppColors.C_4CBB5E,fontWeight: FontWeight.bold,fontSize: 16),))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
