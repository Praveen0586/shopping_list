import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_list/home_pge.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: true).copyWith(textTheme: GoogleFonts.latoTextTheme(),
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue,
            surface: const Color.fromARGB(255, 31, 71, 77),
            brightness: Brightness.dark),
      ),home:const HomePage(),
    ),
  );
}
