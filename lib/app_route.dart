import 'package:flutter/material.dart';
import 'package:flutter_app2/Presentation/Modules/OrderDetailsScreen.dart';
import 'package:flutter_app2/Presentation/Modules/VerifyPhoneScreen.dart';
import 'package:flutter_app2/Presentation/Modules/adressdetailsScreen.dart';
import 'package:flutter_app2/Presentation/Modules/favouriteScreen.dart';
import 'package:flutter_app2/Presentation/Modules/homeScreen.dart';
import 'package:flutter_app2/Presentation/Modules/introductionScreen.dart';
import 'package:flutter_app2/Presentation/Modules/mapScreen.dart';
import 'package:flutter_app2/Presentation/Modules/phoneNumberScreen.dart';
import 'package:flutter_app2/Presentation/Modules/productScreen.dart';
import 'package:flutter_app2/Presentation/Modules/settingScreen.dart';
import 'package:flutter_app2/Presentation/Modules/signUpscreen.dart';
import 'package:flutter_app2/Presentation/Modules/splash.dart';
import 'package:flutter_app2/constants/screens.dart';
import 'package:flutter_app2/data.local/cacheHelper.dart';

import 'Presentation/Modules/signInscreen.dart';

class AppRoute
{
  Route? onGenterateRoute(RouteSettings routeSettings)
  {
switch(routeSettings.name){
  case splashPath:
    return MaterialPageRoute(builder: (_)=>SplashScreen(nextScreen: IntroductionScreen(),));

  case introPath:
    return MaterialPageRoute(builder: (_)=>IntroductionScreen());
  case signInPath:
    return MaterialPageRoute(builder: (_)=>SignInScreen());
  case signUpPath:
    return MaterialPageRoute(builder:(_)=>SignUpScreen());
  case homePath:
    return MaterialPageRoute(builder:(_)=>HomeScreen());
  case phonePath:
    return MaterialPageRoute(builder:(_)=>PhoneNumberScreen());
  case verifyPath:
    return MaterialPageRoute(builder:(_)=>VerifyPhoneScreen());
  case orderdetailsPath:
    return MaterialPageRoute(builder:(_)=>OrderDetailsScreen());
  case favouritePath:
    return MaterialPageRoute(builder:(_)=>FavouriteScreenn());
  case mapPath:
    return MaterialPageRoute(builder:(_)=>MapScreen());
  case productPath:
    return MaterialPageRoute(builder:(_)=>ProductScreen());
  case adresspath:
    return MaterialPageRoute(builder:(_)=>AdressDetailsScreen());
  case settingPath:
    return MaterialPageRoute(builder:(_)=>SettingScreen());








}
  }
}