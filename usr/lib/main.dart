import 'package:flutter/material.dart';
import 'package:couldai_user_app/screens/splash_screen.dart';
import 'package:couldai_user_app/screens/home_screen.dart';
import 'package:couldai_user_app/screens/login_screen.dart';

void main() {
  runApp(const MMEApp());
}

class MMEApp extends StatelessWidget {
  const MMEApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MME',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
        ),
      ),
      // Define the initial route and the routes table
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
