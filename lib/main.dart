import 'package:flutter/material.dart';
import 'app.dart';
import 'shared/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: AppColors.primary,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.white,
          shadowColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: AppText.title.merge(AppText.blackText),
          toolbarTextStyle: AppText.body.merge(AppText.blackText),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.white,
          enableFeedback: true,
          elevation: 10,
        ),
        primaryTextTheme: const TextTheme(
          displayLarge: AppText.heading,
          displayMedium: AppText.heading,
          displaySmall: AppText.subheading,
          headlineLarge: AppText.heading,
          headlineMedium: AppText.heading,
          headlineSmall: AppText.subheading,
          titleLarge: AppText.title,
          titleMedium: AppText.title,
          titleSmall: AppText.subtitle,
          bodyLarge: AppText.body,
          bodyMedium: AppText.body,
          bodySmall: AppText.bodySmall,
          labelLarge: AppText.body,
          labelMedium: AppText.body,
          labelSmall: AppText.body,
        ),
      ),

      // fontFamily: '',),
      home: const App(),
    );
  }
}
