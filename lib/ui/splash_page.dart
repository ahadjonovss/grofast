import 'package:flutter/material.dart';
import 'package:grofast/utils/contants/image.dart';
import 'package:grofast/utils/routes/app_routes.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value) =>
        Navigator.pushNamedAndRemoveUntil(
            context, RouteName.onboardingPage, (route) => false));
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppImages.splash), fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
