import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_app_basmla/screens/category_page.dart';
import 'package:movie_app_basmla/screens/home_page.dart';
import 'package:movie_app_basmla/screens/movie_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF0F111D),
      ),
      routes: {
        "/": (context) => const HomePage(),
        "categoryPage": (context) => const CategoryPage(),
        "moviePage": (context) => const MoviePage(),
      },
    );
  }
}
