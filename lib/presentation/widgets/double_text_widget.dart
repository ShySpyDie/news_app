import 'package:flutter/material.dart';

class DoubleTextWidget extends StatelessWidget {
  static const double upperFontSize = 12.0;
  static const double lowerFontSize = 32.0;
  static const double sizedBoxHeight = 8.0;
  final String upperText;
  final String lowerText;

  const DoubleTextWidget({
    super.key,
    required this.upperText,
    required this.lowerText,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color colorOnTet = colorScheme.onTertiary;
    final Color colorOnPr = colorScheme.onPrimary;

    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              upperText,
              style: TextStyle(
                fontSize: upperFontSize,
                fontWeight: FontWeight.w600,
                color: colorOnTet,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(
              height: sizedBoxHeight,
            ),
            Text(
              lowerText,
              style: TextStyle(
                fontSize: lowerFontSize,
                fontWeight: FontWeight.w600,
                color: colorOnPr,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
