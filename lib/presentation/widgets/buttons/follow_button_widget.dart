import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FollowButtonWidget extends StatelessWidget {
  static const double sizedBoxHeight = 48.0;
  static const double sizedBoxWidth = 8.0;
  static const double fontSize = 14.0;
  final String text;
  final Color color;
  final String assetName;
  final Function() buttonOnPressed;

  const FollowButtonWidget({
    super.key,
    required this.text,
    required this.color,
    required this.buttonOnPressed,
    required this.assetName,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color colorSurf = colorScheme.surface;

    return Expanded(
      child: SizedBox(
        height: sizedBoxHeight,
        child: FilledButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(color),
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
              SvgPicture.asset(
                assetName,
              ),
              SizedBox(
                width: sizedBoxWidth,
              ),
              Text(
                text,
                // overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  height: 0.0,
                  fontWeight: FontWeight.w600,
                  fontSize: fontSize,
                  color: colorSurf,
                  letterSpacing: 1.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
