import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Warna utama yang terinspirasi dari bakery: Coklat tua
  static const Color primaryColor = Color(0xFF8B4513);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyShop Mini',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.brown,
        ).copyWith(secondary: primaryColor),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          foregroundColor: primaryColor, // Ikon dan teks di AppBar
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: primaryColor),
          bodyMedium: TextStyle(color: primaryColor),
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
