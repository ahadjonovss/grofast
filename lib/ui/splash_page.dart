import 'package:flutter/material.dart';
import 'package:grofast/data/repositories/storage_repository.dart';
import 'package:grofast/utils/routes/app_routes.dart';
import 'package:grofast/view_models/authorization_view_model.dart';
import 'package:provider/provider.dart';
import '../utils/constants/image.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<AuthorizationViewModel>().getToken();
    Future.delayed(const Duration(seconds: 3)).then((value) =>
        Navigator.pushNamedAndRemoveUntil(
            context, context.read<AuthorizationViewModel>().token==null?RouteName.onboardingPage:RouteName.mainPage, (route) => false));
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration:  const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppImages.splash), fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
