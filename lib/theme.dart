import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

String purple = "#570FF2";
String yellow = "#FFC42C";
HexColor purpleHex = HexColor(purple);
HexColor yellowHex = HexColor(yellow);

ThemeData purpleTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: purpleHex,
    ),
    useMaterial3: true,
    textTheme: TextTheme(
      //Heading
      displayLarge: GoogleFonts.josefinSans(
        color: purpleHex,
        fontSize: 89,
      ),

      //AppBar
      titleLarge: GoogleFonts.josefinSans(
        color: purpleHex,
        fontSize: 48,
      ),

      labelLarge: GoogleFonts.josefinSans(
        color: Colors.black,
        fontSize: 80,
      ),
      labelSmall: GoogleFonts.josefinSans(
        color: Colors.black,
        fontSize: 20,
      ),

      //Mid Page Title
      bodyLarge: GoogleFonts.josefinSans(
        color: Colors.white,
        fontSize: 89,
      ),
      bodyMedium: GoogleFonts.josefinSans(
        color: Colors.white,
        fontSize: 36,
      ),
      displaySmall: GoogleFonts.josefinSans(
        color: purpleHex,
        fontSize: 20,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(yellowHex),
        foregroundColor: const MaterialStatePropertyAll(Colors.black),
        minimumSize: const MaterialStatePropertyAll(Size.zero),
        shape: const MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(6.0),
            ),
          ),
        ),
        textStyle: MaterialStatePropertyAll(
          GoogleFonts.josefinSans(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        padding: const MaterialStatePropertyAll(
          EdgeInsets.all(20.0),
        ),
      ),
    ),
    tabBarTheme: TabBarTheme(
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white,
      labelStyle: GoogleFonts.josefinSans(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
      unselectedLabelStyle: GoogleFonts.josefinSans(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
      indicatorSize: TabBarIndicatorSize.label,
      indicatorColor: Colors.white,
    ),
    iconTheme: IconThemeData(
      color: purpleHex,
    ));
