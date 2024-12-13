import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'auth/login/login_view.dart';
import 'constants/AppColors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();

}
class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) {
      return GetMaterialApp(
          useInheritedMediaQuery: true,
          title: 'Fix It App',
          color: AppColors.appPrimaryColor,
          darkTheme: ThemeData(
            fontFamily: 'Zen Dots',
            brightness: Brightness.dark,
            primaryColor: AppColors.appPrimaryColor,
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Zen Dots',
            brightness: Brightness.light,
            useMaterial3: true,
          ),
          home: LoginView());
    });
  }
}




