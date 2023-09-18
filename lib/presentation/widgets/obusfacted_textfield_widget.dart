import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ObusfactedTextfieldWidget extends StatelessWidget {
  static const double hintFontSize = 16.0;
  static const double upperTextFontSize = 14.0;
  static const double iconPaddingLeft = 16.0;
  static const double iconPaddingRight = 12.0;
  static const double iconHeight = 24.0;
  static const double textPaddingBottom = 8.0;
  static const double hintTextHeight = 1.5;
  final String textInsideTextfield;
  final String upperText;
  final String buttonText;
  final String prefixIconAsset;
  final bool obscureText;

  const ObusfactedTextfieldWidget({
    super.key,
    required this.textInsideTextfield,
    required this.upperText,
    required this.prefixIconAsset,
    this.obscureText = false,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color colorOnTet = colorScheme.onTertiary;
    final Color colorOnPr = colorScheme.onPrimary;
    final Color colorPr = colorScheme.primary;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: textPaddingBottom),
          child: Row(
            children: [
              Text(
                upperText,
                style: TextStyle(
                  fontSize: upperTextFontSize,
                  fontWeight: FontWeight.w400,
                  color: colorOnPr,
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  buttonText,
                  style: TextStyle(
                    fontSize: upperTextFontSize,
                    fontWeight: FontWeight.w400,
                    color: colorPr,
                  ),
                ),
              ),
            ],
          ),
        ),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black12),
              borderRadius: BorderRadius.all(
                Radius.circular(0.0),
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(0.0),
              ),
            ),
            hintText: textInsideTextfield,
            hintStyle: TextStyle(
              height: hintTextHeight,
              color: colorOnTet,
              fontSize: hintFontSize,
              fontWeight: FontWeight.w400,
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(
                left: iconPaddingLeft,
                right: iconPaddingRight,
              ),
              child: SvgPicture.asset(prefixIconAsset),
            ),
            prefixIconConstraints: BoxConstraints(
              maxHeight: iconHeight,
            ),
          ),
        ),
      ],
    );
  }
}
