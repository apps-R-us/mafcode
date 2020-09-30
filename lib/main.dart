import 'package:flutter/material.dart';

import 'screens/forgot_password_screen.dart';
import 'screens/home_screen.dart';
import 'package:mafcode/screens/submit_screen.dart';
import 'package:mafcode/screens/map_screen.dart';
import 'package:mafcode/screens/settings_screen.dart';
import 'package:mafcode/screens/welcome_screen.dart';
import 'package:mafcode/screens/signup_screen.dart';
import 'package:mafcode/screens/login_screen.dart';
import 'package:mafcode/screens/forgot_password_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.blue[200])),
      initialRoute: WelcomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        SubmitScreen.id: (context) => SubmitScreen(),
        MapScreen.id: (context) => MapScreen(),
        SettingsScreen.id: (context) => SettingsScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        ForgetPassword.id: (context) => ForgetPassword(),
      },
    );
  }
}
