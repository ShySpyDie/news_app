import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SingInWithButtonWidget extends StatelessWidget {
  static const double sizedBoxHeight = 48.0;
  static const double fontSize = 14.0;
  static const double buttonPadding = 12.0;
  final String logoAsset;
  final String text;
  final Function() onTap;

  SingInWithButtonWidget({
    super.key,
    required this.logoAsset,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color colorSurf = colorScheme.surface;
    final Color colorOnPr = colorScheme.onPrimary;

    return SizedBox(
      height: sizedBoxHeight,
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: colorSurf,
            border: Border.fromBorderSide(
              BorderSide(color: Colors.black12),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(logoAsset),
              Padding(
                padding: EdgeInsets.only(left: buttonPadding),
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: fontSize,
                    fontWeight: FontWeight.w400,
                    color: colorOnPr,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
