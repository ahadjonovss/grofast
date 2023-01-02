import 'package:flutter/material.dart';
import 'package:grofast/ui/authorization/login_page.dart';
import 'package:grofast/ui/authorization/privacy_page.dart';
import 'package:grofast/ui/authorization/register_page.dart';
import 'package:grofast/ui/home/main_page.dart';
import 'package:grofast/ui/home/pages/account_page.dart';
import 'package:grofast/ui/home/pages/bag_page.dart';
import 'package:grofast/ui/home/pages/home_page.dart';
import 'package:grofast/ui/home/pages/search_page.dart';
import 'package:grofast/ui/home/pages/wishlist_page.dart';
import 'package:grofast/ui/onboarding/onboarding_page.dart';
import 'package:grofast/ui/splash_page.dart';

import '../../ui/authorization/identification.dart';

class RouteName{

  //authorization
  static const identificationPage="identification";
  static const loginPage="login_page.dart";
  static const privacyPage="privacy_page";
  static const registerPage="register_page";

  //onboarding
  static const onboardingPage="onboarding_page";

  //home
  static const accountPage="account_page";
  static const bagPage="bag_page";
  static const homePage="home_page";
  static const searchPage="search_page";
  static const wishlistPage="wishlist_page.dart";
  static const mainPage="mainPage";

  //splash
  static const splashPage="splashPage";



}

class AppRoutes{

  static Route generateRote(RouteSettings settings){
    dynamic args=settings.arguments;

    switch(settings.name){
    //onboarding
      case RouteName.onboardingPage:
        return MaterialPageRoute(builder: (_)=>const OnboardingPage());

    // authorization pages
      case RouteName.loginPage:
        return MaterialPageRoute(builder: (_)=> LoginPage());
      case RouteName.registerPage:
        return MaterialPageRoute(builder: (_)=>const RegisterPage());
      case RouteName.identificationPage:
        return MaterialPageRoute(builder: (_)=>const IdentificationPage());
      case RouteName.privacyPage:
        return MaterialPageRoute(builder: (_)=>const PrivacyPage());

    // home pages
      case RouteName.homePage:
        return MaterialPageRoute(builder: (_)=>const HomePage());
      case RouteName.searchPage:
        return MaterialPageRoute(builder: (_)=>const SearchPage());
      case RouteName.wishlistPage:
        return MaterialPageRoute(builder: (_)=>const WishListPage());
      case RouteName.accountPage:
        return MaterialPageRoute(builder: (_)=>const AccountPage());
      case RouteName.bagPage:
        return MaterialPageRoute(builder: (_)=>const BagPage());
      case RouteName.mainPage:
        return MaterialPageRoute(builder: (_)=>const MainPage());

    // splash pages
      case RouteName.splashPage:
        return MaterialPageRoute(builder: (_)=>const SplashPage());


      default: return MaterialPageRoute(builder: (_)=>const Scaffold());
    }

  }
}