import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreenPage extends StatelessWidget {
  static const String newspaperSvg = 'assets/newspaper-fill1.svg';
  static const double fontSize = 14.0;
  static const double mediaQuaryHeight = 30.0;

  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color colorSurf = colorScheme.surface;
    final Color colorDisplayFont = colorScheme.onSurface;
    final Color colorPr = colorScheme.primary;
    final TextTheme textTheme = Theme.of(context).textTheme;
    final MediaQueryData mediaQuery = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: colorSurf,
      body: Stack(
        children: [
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(newspaperSvg),
                Text(
                  'Papary',
                  style: textTheme.displaySmall?.copyWith(
                    color: colorDisplayFont,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: mediaQuery.size.height / mediaQuaryHeight,
            child: SizedBox(
              width: mediaQuery.size.width,
              child: Center(
                child: Text(
                  'v.1.0.678',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: fontSize,
                    color: colorPr,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
