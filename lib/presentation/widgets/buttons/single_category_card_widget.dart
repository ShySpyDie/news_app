import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SingleCategoryCardWidget extends StatefulWidget {
  static const double containerBorderWidth = 2.0;
  double get getContainerBorderWidth => containerBorderWidth;
  static const double fontSize = 14.0;
  double get getFontSize => fontSize;
  static const double width = 179.0;
  final String assetName;
  final String textInCard;
  final Color color;
  final double sizedBoxWidth;
  final void Function() onTap;

  const SingleCategoryCardWidget({
    super.key,
    required this.assetName,
    required this.textInCard,
    required this.color,
    required this.onTap,
    this.sizedBoxWidth = width,
  });

  @override
  State<SingleCategoryCardWidget> createState() => _SingleCategoryCardWidgetState();
}

class _SingleCategoryCardWidgetState extends State<SingleCategoryCardWidget> {
  bool isButtonPressed = false;

  Color getButtonBorderStateColor() {
    return isButtonPressed ? Theme.of(context).colorScheme.primary : Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    void onButtonTap() {
      setState(() {
        isButtonPressed = !isButtonPressed;
      });

      widget.onTap();
    }

    return SizedBox(
      width: widget.sizedBoxWidth,
      child: InkWell(
        onTap: onButtonTap,
        child: Container(
          decoration: BoxDecoration(
            color: widget.color,
            border: Border.fromBorderSide(
              BorderSide(color: getButtonBorderStateColor(), width: widget.getContainerBorderWidth),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  top: 16.0,
                ),
                child: SvgPicture.asset(widget.assetName),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  bottom: 16.0,
                  top: 16.0,
                ),
                child: Text(
                  widget.textInCard,
                  style: TextStyle(
                    fontSize: widget.getFontSize,
                    fontWeight: FontWeight.w400,
                    color: colorScheme.onPrimary,
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
