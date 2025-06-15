import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/colors.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kWhite,
    fontFamily: GoogleFonts.montserrat().fontFamily,

    // Text theme
    textTheme: GoogleFonts.montserratTextTheme().apply(
      bodyColor: kTextPrimary,
      displayColor: kTextPrimary,
    ),

    // AppBar
    appBarTheme: const AppBarTheme(
      backgroundColor: kWhite,
      elevation: 1,
      iconTheme: IconThemeData(color: kTextPrimary),
      titleTextStyle: TextStyle(color: kTextPrimary, fontSize: 20),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: kWhite,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),

    // Icons
    iconTheme: const IconThemeData(color: kTextSecondary),

    // Cards
    cardColor: kLightBackground,

    // Dividers
    dividerColor: kLightGrey,

    // Dialogs
    dialogBackgroundColor: kWhite,

    // Bottom nav
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: kWhite,
      selectedItemColor: kPrimaryColor,
      unselectedItemColor: kTextSecondary,
    ),

    // Floating button
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: kPrimaryColor,
      foregroundColor: kWhite,
    ),

    // SnackBars
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: kPrimaryColor,
      contentTextStyle: TextStyle(color: kWhite),
    ),

    // Inputs
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: kLightGrey,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      hintStyle: TextStyle(color: kTextSecondary),
      labelStyle: TextStyle(color: kTextPrimary),
    ),

    // Buttons
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: kPrimaryColor,
        textStyle: const TextStyle(fontWeight: FontWeight.w600),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimaryColor,
        foregroundColor: kWhite,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: kPrimaryColor,
        side: const BorderSide(color: kPrimaryColor),
      ),
    ),

    // Popup menu
    popupMenuTheme: const PopupMenuThemeData(
      color: kWhite,
      textStyle: TextStyle(color: kTextPrimary),
    ),

    // Tooltip
    tooltipTheme: const TooltipThemeData(
      decoration: BoxDecoration(color: kPrimaryColor),
      textStyle: TextStyle(color: kWhite),
    ),

    // Chips
    chipTheme: ChipThemeData(
      backgroundColor: kLightGrey,
      selectedColor: kPrimaryColor,
      labelStyle: const TextStyle(color: kTextPrimary),
      secondaryLabelStyle: const TextStyle(color: kWhite),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      disabledColor: kLightGrey,
      secondarySelectedColor: kPrimaryColor,
    ),

    // Scrollbar
    scrollbarTheme: ScrollbarThemeData(
      thumbColor: MaterialStateProperty.all(kPrimaryColor.withOpacity(0.7)),
    ),

    // Progress indicators
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: kPrimaryColor,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kDarkBackground,
    fontFamily: GoogleFonts.montserrat().fontFamily,

    textTheme: GoogleFonts.montserratTextTheme().apply(
      bodyColor: kWhite,
      displayColor: kWhite,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: kCardDark,
      elevation: 1,
      iconTheme: IconThemeData(color: kWhite),
      titleTextStyle: TextStyle(color: kWhite, fontSize: 20),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: kCardDark,
        statusBarIconBrightness: Brightness.light,
      ),
    ),

    iconTheme: const IconThemeData(color: kWhite),
    cardColor: kCardDark,
    dividerColor: kDarkDivider,
    dialogBackgroundColor: kDarkSecondaryBackground,

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: kDarkSecondaryBackground,
      selectedItemColor: kPrimaryColor,
      unselectedItemColor: kWhite,
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: kPrimaryColor,
      foregroundColor: kWhite,
    ),

    snackBarTheme: const SnackBarThemeData(
      backgroundColor: kPrimaryColor,
      contentTextStyle: TextStyle(color: kWhite),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: kDarkSecondaryBackground,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      hintStyle: TextStyle(color: kTextSecondary),
      labelStyle: TextStyle(color: kWhite),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: kPrimaryColor,
        textStyle: const TextStyle(fontWeight: FontWeight.w600),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimaryColor,
        foregroundColor: kWhite,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: kPrimaryColor,
        side: const BorderSide(color: kPrimaryColor),
      ),
    ),

    popupMenuTheme: const PopupMenuThemeData(
      color: kCardDark,
      textStyle: TextStyle(color: kWhite),
    ),

    tooltipTheme: const TooltipThemeData(
      decoration: BoxDecoration(color: kPrimaryColor),
      textStyle: TextStyle(color: kWhite),
    ),

    chipTheme: ChipThemeData(
      backgroundColor: kDarkSecondaryBackground,
      selectedColor: kPrimaryColor,
      labelStyle: const TextStyle(color: kWhite),
      secondaryLabelStyle: const TextStyle(color: kBlack),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      disabledColor: kDarkDivider,
      secondarySelectedColor: kPrimaryColor,
    ),

    scrollbarTheme: ScrollbarThemeData(
      thumbColor: MaterialStateProperty.all(kPrimaryColor.withOpacity(0.7)),
    ),

    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: kPrimaryColor,
    ),
  );
}
