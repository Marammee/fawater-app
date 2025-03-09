import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_bills/controller/signup_controller/signup_cubit.dart';

import 'package:project_bills/view/screen/signup.dart';

import '../controller/login_controller/login_cubit.dart';
import '../view/screen/layout.dart';
import '../view/screen/login.dart';


class AppRoutes {
  static const String home = '/';

  static const String login = '/login';
  static const String signup = '/signup';
  static const String layout = '/layout';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => Layout());



        case login:
          return MaterialPageRoute(
            builder: (context) => BlocProvider(
              create: (context) => LoginCubit(), // إنشاء Cubit خاص بصفحة LoginDealer
              child: Login(),
            ),
          );
          case signup:
            return MaterialPageRoute(
              builder: (context) => BlocProvider(
                create: (context) => SignupCubit(), // إنشاء Cubit خاص بصفحة LoginDealer
                child: Signup(),
              ),
            );
      case layout:
        return MaterialPageRoute(builder: (_) => Layout());
            default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
