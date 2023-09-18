import 'package:flutter/material.dart';
import 'package:news_app/presentation/pages/home_page.dart';

class App extends StatelessWidget {
  static const double displayLargeFontSize = 48.0;
  static const double displaySmallFontSize = 40.0;
  static const double bodySmallFontSize = 14.0;
  static const double bodyMediumFontSize = 16.0;
  static const double bodyLargeFontSize = 32.0;
  static const double labelSmallFontSize = 12.0;

  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        colorScheme: ColorScheme.light(
          surface: Colors.white,
          onSurface: Color(0xFF02142F), // 900 blue text
          primary: Color(0xFF0864ED), //500 blue
          secondary: Color(0xFF0650BE), //600 blue
          onPrimary: Color(0xFF191F33), // 900 gray text
          onSecondary: Color(0xFF464D61), // 700 gray
          onTertiary: Color(0xFF767E94), // 500 gray
          onSurfaceVariant: Color(0xFFE9EAF0), // 60 gray
          tertiary: Color(0xFFE6F0FD), // 50 blue
        ),
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: displayLargeFontSize,
          ),
          displaySmall: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: displaySmallFontSize,
          ),
          bodySmall: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: bodySmallFontSize,
          ),
          bodyMedium: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: bodyMediumFontSize,
          ),
          bodyLarge: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: bodyLargeFontSize,
          ),
          labelSmall: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: labelSmallFontSize,
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}
