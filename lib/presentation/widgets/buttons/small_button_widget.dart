//ignore_for_file: prefer-conditional-expressions

import 'package:flutter/material.dart';

class SmallButtonWidget extends StatelessWidget {
  static const double sizedBoxHeight = 48.0;
  static const double sizedBoxInsedeButtonWigth = 12.0;
  static const double fontSize = 14.0;
  final bool blue;
  final bool arrow;
  final String text;
  final Function() buttonOnPressed;

  const SmallButtonWidget({
    super.key,
    required this.text,
    required this.buttonOnPressed,
    required this.blue,
    this.arrow = false,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color colorPr = colorScheme.primary;
    final Color colorTet = colorScheme.tertiary;
    final Color colorSurf = colorScheme.surface;

    if (!blue) {
      return Expanded(
        child: SizedBox(
          height: sizedBoxHeight,
          child: FilledButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(colorTet),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.zero),
                ),
              ),
            ),
            onPressed: buttonOnPressed,
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: fontSize,
                color: colorPr,
                letterSpacing: 1.0,
              ),
            ),
          ),
        ),
      );
    } else {
      switch (arrow) {
        case (true):
          return Expanded(
            child: SizedBox(
              height: sizedBoxHeight,
              child: FilledButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(colorPr),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.zero),
                    ),
                  ),
                ),
                onPressed: buttonOnPressed,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: fontSize,
                        color: colorSurf,
                        letterSpacing: 1.0,
                      ),
                    ),
                    SizedBox(
                      width: sizedBoxInsedeButtonWigth,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: colorSurf,
                    ),
                  ],
                ),
              ),
            ),
          );
        case (false):
          return Expanded(
            child: SizedBox(
              height: sizedBoxHeight,
              child: FilledButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(colorPr),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.zero),
                    ),
                  ),
                ),
                onPressed: buttonOnPressed,
                child: Text(
                  text,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: fontSize,
                    color: colorSurf,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ),
          );
      }
    }
  }
}
