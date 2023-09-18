import 'package:flutter/material.dart';
import 'package:news_app/presentation/widgets/buttons/sing_in_with_button_widget.dart';

class BottomDeviderWidget extends StatelessWidget {
  static const double fontSize = 12.0;
  static const double dividerMargin = 16.0;
  static const double buttonPaddingTop = 32.0;
  static const double buttonPaddingBottom = 20.0;
  static const double containerLeftMargin = 20.0;
  static const double containerRightMargin = 20.0;
  static const double containerBottomMargin = 40.0;
  final Function() googleOnTap;
  final Function() facebookOnTap;

  BottomDeviderWidget({
    super.key,
    required this.googleOnTap,
    required this.facebookOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(right: dividerMargin),
                child: Divider(
                  color: Colors.black26,
                ),
              ),
            ),
            Text(
              'OR',
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.w600,
                color: Colors.black26,
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: dividerMargin),
                child: Divider(
                  color: Colors.black26,
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(
            left: containerLeftMargin,
            right: containerRightMargin,
            bottom: containerBottomMargin,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: buttonPaddingTop,
                  bottom: buttonPaddingBottom,
                ),
                child: SingInWithButtonWidget(
                  logoAsset: 'assets/google.svg',
                  text: 'Sing in with Google',
                  onTap: googleOnTap,
                ),
              ),
              SingInWithButtonWidget(
                logoAsset: 'assets/facebook.svg',
                text: 'Sing in with Facebook',
                onTap: facebookOnTap,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
