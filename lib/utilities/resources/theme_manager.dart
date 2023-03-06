import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_task/utilities/resources/color_manager.dart';
import 'package:test_task/utilities/resources/styles_manager.dart';
import 'package:test_task/utilities/resources/values_manager.dart';
import 'font_manager.dart';

ThemeData getApplicationTheme() => ThemeData(
      fontFamily: FontConstants.fontFamily,
      backgroundColor: ColorManager.white,
      scaffoldBackgroundColor: ColorManager.white,
      //Main Colors
      primaryColor: ColorManager.white,
      primaryColorLight: ColorManager.white,
      primaryColorDark: ColorManager.white,
      disabledColor: ColorManager.white,
      splashColor: ColorManager.white,

      //Card View Theme
      cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.white,
        elevation: AppSize.s1_5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s8),
        ),
      ),

      //AppBar Theme
      appBarTheme: AppBarTheme(
        foregroundColor: ColorManager.black,
        backgroundColor: ColorManager.white,
        centerTitle: true,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        shadowColor: ColorManager.white,
        titleTextStyle: getBoldTextStyle(color: ColorManager.black, fontSize: AppSize.s20),
      ),

      //Button Theme
      buttonTheme: ButtonThemeData(
        splashColor: ColorManager.primary,
        shape: const StadiumBorder(),
        disabledColor: ColorManager.white,
        buttonColor: ColorManager.primary,
      ),

      //Elevated Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: getBoldTextStyle(color: ColorManager.white, fontSize: FontSize.s20),
          padding: const EdgeInsets.symmetric(
            vertical: AppPadding.p12,
            horizontal: AppPadding.p18,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s4),
          ),
          backgroundColor: ColorManager.primary,
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          textStyle: getBoldTextStyle(color: ColorManager.white, fontSize: FontSize.s14),
          padding: const EdgeInsets.symmetric(
            vertical: AppPadding.p4,
            horizontal: AppPadding.p8,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s4),
            side: const BorderSide(color: Colors.red),
          ),
        ),
      ),

      // text theme
      textTheme: TextTheme(
        displayLarge: getLightTextStyle(color: ColorManager.white, fontSize: FontSize.s22),
        headlineLarge: getSemiBoldTextStyle(color: ColorManager.white, fontSize: FontSize.s16),
        titleSmall: getMediumTextStyle(
          color: ColorManager.lightGrey,
          fontSize: FontSize.s11,
        ),
        titleMedium: getBoldTextStyle(
          color: ColorManager.lightGrey,
          fontSize: FontSize.s12,
        ),
        titleLarge: getSemiBoldTextStyle(
          color: ColorManager.black,
          fontSize: FontSize.s14,
        ),
        bodyLarge: getRegularTextStyle(
          color: ColorManager.white,
        ),
        bodySmall: getSemiBoldTextStyle(
          color: ColorManager.black,
          fontSize: FontSize.s12,
        ),
        bodyMedium: getSemiBoldTextStyle(
          color: ColorManager.black,
          fontSize: FontSize.s14,
        ),
        headlineMedium: getRegularTextStyle(
          color: ColorManager.white,
          fontSize: FontSize.s16,
        ),
        displayMedium: getBoldTextStyle(
          color: ColorManager.white,
          fontSize: FontSize.s18,
        ),
        labelLarge: getBoldTextStyle(
          color: ColorManager.white,
          fontSize: FontSize.s22,
        ),
        labelSmall: getSemiBoldTextStyle(
          color: ColorManager.white,
          fontSize: FontSize.s8,
        ),
        labelMedium: getMediumTextStyle(
          color: ColorManager.white,
          fontSize: FontSize.s14,
        ),
      ),

      //inputDecoration Theme (Text Form Field)
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(AppPadding.p20),
        hintStyle: getRegularTextStyle(color: ColorManager.white, fontSize: FontSize.s14),
        labelStyle: getMediumTextStyle(color: ColorManager.white, fontSize: FontSize.s14),
        counterStyle: getMediumTextStyle(color: ColorManager.white, fontSize: FontSize.s14),
        errorStyle: getRegularTextStyle(color: ColorManager.error),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.white,
            width: AppSize.s1_5,
          ),
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorManager.lightGrey, width: AppSize.s1),
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.primary,
            width: AppSize.s1_5,
          ),
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.error,
            width: AppSize.s1_5,
          ),
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    );
