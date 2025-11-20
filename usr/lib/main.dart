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
        // Changed to Green for "Cash Money" theme
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green, brightness: Brightness.light),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
        ),
        cardTheme: CardTheme(
          elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
