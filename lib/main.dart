import 'package:facebook_task/routes/route_name.dart';
import 'package:facebook_task/screens/Login_Screen.dart';
import 'package:facebook_task/screens/home_Screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    initialRoute: RouteName.SplashScreen,
home: LoginScreen(),
      routes: {

        RouteName.LoginScreen:(context)=>LoginScreen(),
        RouteName.HomeScreen:(context)=>HomeScreen()
      },
    );
  }
}
