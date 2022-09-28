import 'package:abanoub_flutter_task/presentation/resources/styles_manger.dart';
import 'package:abanoub_flutter_task/presentation/resources/values_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors_manger.dart';
import 'fonts_manger.dart';

ThemeData getThemData() {
  return ThemeData(
    primaryColor: ColorsManger.primary,
    disabledColor: ColorsManger.grey,
    cardTheme: const CardTheme(
      color: ColorsManger.white,
      elevation: AppSize.s4,
      shadowColor: ColorsManger.grey,
    ),
    appBarTheme: AppBarTheme(
      color: ColorsManger.primary,
      elevation: AppSize.s4,
      centerTitle: false,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: ColorsManger.lightPrimary,
      ),
      shadowColor: ColorsManger.lightGrey,
      titleTextStyle: getSemiBoldStyle(
        fontSize: FontSize.s18,
        color: ColorsManger.white,
      ),
    ),
    buttonTheme: const ButtonThemeData(
      shape: StadiumBorder(),
      buttonColor: ColorsManger.primary,
      disabledColor: ColorsManger.grey,
      splashColor: ColorsManger.lightPrimary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: ColorsManger.primary,
        textStyle: getRegularStyle(
          color: ColorsManger.white,
          fontSize: FontSize.s17,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),
    textTheme: TextTheme(
      headlineLarge: getBoldStyle(
        color: ColorsManger.black,
        fontSize: FontSize.s16,
      ),
      titleMedium: getRegularStyle(
        color: ColorsManger.grey,
        fontSize: FontSize.s18,
      ),
      // titleSmall: getRegularStyle(
      //   color: ColorsManger.white,
      //   fontSize: FontSize.s16,
      // ),
      // headlineMedium: getRegularStyle(
      //   color: ColorsManger.darkGrey,
      //   fontSize: FontSize.s14,
      // ),
      // bodyLarge: getBoldStyle(
      //   color: ColorsManger.primary,
      //   fontSize: 18,
      // ),
      // bodySmall: getBoldStyle(
      //   color: ColorsManger.white,
      //   fontSize: FontSize.s14,
      // ),
      // displayMedium: getBoldStyle(
      //   color: ColorsManger.primary,
      //   fontSize: FontSize.s20,
      // ),
      // displaySmall: getBoldStyle(
      //   color: ColorsManger.blue,
      //   fontSize: FontSize.s20,
      // ),
      // displayLarge: getLightStyle(
      //   color: ColorsManger.darkGrey,
      //   fontSize: FontSize.s16,
      // ),
      // labelSmall: getBoldStyle(
      //   color: ColorsManger.blue,
      //   fontSize: FontSize.s18,
      // ),
      // bodyMedium: getBoldStyle(
      //   color: ColorsManger.primary,
      //   fontSize: FontSize.s18,
      // ),
      // headlineSmall: getBoldStyle(
      //   color: ColorsManger.white,
      //   fontSize: FontSize.s8,
      // ),
      // titleLarge: getSemiBoldStyle(
      //   color: ColorsManger.lightGrey,
      //   fontSize: FontSize.s18,
      // ),
      // labelLarge: getBoldStyle(
      //   color: ColorsManger.white,
      //   fontSize: FontSize.s22,
      // ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      hintStyle:
          getRegularStyle(color: ColorsManger.grey, fontSize: FontSize.s14),
      labelStyle:
          getMediumStyle(color: ColorsManger.grey, fontSize: FontSize.s14),
      errorStyle: getRegularStyle(color: ColorsManger.erorr),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: ColorsManger.grey, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(
          Radius.circular(AppSize.s5_0),
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide:
            BorderSide(color: ColorsManger.primary, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(
          Radius.circular(AppSize.s5_0),
        ),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: ColorsManger.erorr, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(
          Radius.circular(AppSize.s5_0),
        ),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide:
            BorderSide(color: ColorsManger.primary, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(
          Radius.circular(AppSize.s5_0),
        ),
      ),
    ),
  );
}
