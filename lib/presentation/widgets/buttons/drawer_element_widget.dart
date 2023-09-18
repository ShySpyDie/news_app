import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerElementWidget extends StatelessWidget {
  static const double fontSize = 16.0;
  final String text;
  final String assetName;
  final Function() onTap;
  final Widget widget;

  const DrawerElementWidget({
    super.key,
    required this.assetName,
    required this.text,
    required this.onTap,
    this.widget = const SizedBox(),
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color colorOnSec = colorScheme.onSecondary;
    final Color colorSurf = colorScheme.surface;

    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black12,
          ),
        ),
        color: colorSurf,
      ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                top: 20.0,
                right: 16.0,
                bottom: 20.0,
              ),
              child: SvgPicture.asset(assetName),
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.w400,
                color: colorOnSec,
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: widget,
            ),
          ],
        ),
      ),
    );
  }
}
