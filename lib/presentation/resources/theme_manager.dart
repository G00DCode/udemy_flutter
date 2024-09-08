import 'package:flutter/material.dart';
import 'package:udemy_flutter/presentation/resources/color_manager.dart';
import 'package:udemy_flutter/presentation/resources/font_manager.dart';
import 'package:udemy_flutter/presentation/resources/styles_manager.dart';
import 'package:udemy_flutter/presentation/resources/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    //main colors of the app
    primaryColor: ColorManager.purple,
    primaryColorLight: ColorManager.purpleOpacity70,
    primaryColorDark: ColorManager.darkPurple,
    disabledColor: ColorManager
        .grey1, //will be used in-case of disabled button for example
    //ripple color
    splashColor: ColorManager.purpleOpacity70,
    colorScheme: ColorScheme.fromSwatch(accentColor: ColorManager.grey),

    //card view theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),

    //App bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.purple,
      elevation: AppSize.s4,
      shadowColor: ColorManager.purpleOpacity70,
      titleTextStyle: getRegularStyle(fontSize:FontSize.s16,color: ColorManager.white)
    ),

    //Button theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.purple,
      splashColor: ColorManager.purpleOpacity70,
    ),

    //Elevated Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(color: ColorManager.white),
        foregroundColor:ColorManager.purple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      )
    ),

    //Text theme
    textTheme: TextTheme(
      displayLarge: getSemiBoldStyle(fontSize:FontSize.s16,color: ColorManager.darkPurple,),
      titleLarge: getMediumStyle(color: ColorManager.lightGrey,fontSize: FontSize.s14),
      bodySmall: getRegularStyle(color: ColorManager.grey1),
      bodyLarge: getRegularStyle(color: ColorManager.grey)
    ),

    //input decoration theme (text form field)

    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p8),

      //hint style
      hintStyle: getRegularStyle(color: ColorManager.grey1),

      //label style
      labelStyle: getMediumStyle(color: ColorManager.darkGrey),

      //error style
      errorStyle: getRegularStyle(color: ColorManager.error),

      //enabled border
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey,width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),

      //focused border
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.purple,width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),

      //error border
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error,width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),

      //focusedError border
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.purple,width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
  )

  );
}
