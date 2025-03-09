import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_bills/controller/bill_controller/bills_cubit.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'controller/layout_controller/layout_cubit.dart';
import 'controller/login_controller/login_cubit.dart';
import 'controller/signup_controller/signup_cubit.dart';
import 'core/app_routes.dart';
import 'core/shared/colors.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(
     SystemUiOverlayStyle(
      statusBarColor: ProjectColors.mainColor, // لون الشريط العلوي
      statusBarIconBrightness: Brightness.light, // لون أيقونات الشريط (Light أو Dark)
    ),
  );
  runApp(
      MultiBlocProvider (
        providers: [
          BlocProvider<LoginCubit>(
            create: (context) => LoginCubit(),
          ),
          BlocProvider<SignupCubit>(
            create: (context) => SignupCubit(),
          ),
          BlocProvider<LayoutCubit>(
            create: (context) => LayoutCubit(),
          ),
          BlocProvider<BillsCubit>(
            create: (context) => BillsCubit(),
          )
        ],

        child: MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project Bills',
      theme: ThemeData(
        fontFamily: 'Tajawal',
        colorScheme: ColorScheme.fromSeed(seedColor: ProjectColors.mainColor,),

        // appBarTheme: AppBarTheme(
        //   backgroundColor: Colors.red, // تعيين اللون الأحمر للشريط العلوي
        //   foregroundColor: Colors.white, // تعيين لون النص أو الأيقونات داخل الشريط العلوي
        // ),
        useMaterial3: true,
      ),
      onGenerateRoute:AppRoutes.generateRoute,
      // initialRoute: AppRoutes.layoutDealer,
      // home: SelectAccount(),
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      locale: Locale("ar"),

    );
  }
}

