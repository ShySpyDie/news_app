import 'package:flutter/material.dart';
import 'package:news_app/presentation/widgets/bottom_devider_widget.dart';
import 'package:news_app/presentation/widgets/buttons/small_button_widget.dart';
import 'package:news_app/presentation/widgets/double_text_widget.dart';
import 'package:news_app/presentation/widgets/textfield_widget.dart';

class ForgetPasswordPage extends StatelessWidget {
  static const double textFontSize = 16.0;
  static const double leadingWidth = 60.0;
  static const double sizedBoxWigth = 12.0;
  static const double containerMarginLeft = 20.0;
  static const double containerMarginRight = 20.0;
  static const double containerMarginTop = 40.0;
  static const double paddingVertical = 32.0;
  static const double textPaddingTop = 16.0;

  void arrowBackOnPressed() {}
  void LoginOnPressed() {}
  void sendRequestOnPressed() {}
  void googleOnTap() {}
  void facebookOnTap() {}

  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color colorSurf = colorScheme.surface;
    final Color colorOnSurf = colorScheme.onSurface;
    final Color colorOnTet = colorScheme.onTertiary;

    return Scaffold(
      backgroundColor: colorSurf,
      appBar: AppBar(
        shape: Border(
          bottom: BorderSide(color: Colors.black12),
        ),
        backgroundColor: colorSurf,
        elevation: 0.0,
        leadingWidth: leadingWidth,
        leading: IconButton(
          onPressed: arrowBackOnPressed,
          icon: Icon(
            Icons.arrow_back,
            color: colorOnSurf,
          ),
        ),
        actions: [
          TextButton(
            onPressed: LoginOnPressed,
            child: Text(
              'Log in',
              style: TextStyle(
                fontSize: textFontSize,
                fontWeight: FontWeight.w600,
                color: colorOnSurf,
              ),
            ),
          ),
          SizedBox(
            width: sizedBoxWigth,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              left: containerMarginLeft,
              right: containerMarginRight,
              top: containerMarginTop,
            ),
            child: Column(
              children: [
                DoubleTextWidget(
                  upperText: 'WHAT! YOU',
                  lowerText: 'Forget your password',
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: textPaddingTop,
                  ),
                  child: Text(
                    'Don\'t worry, we have way to reset your password. enter your email address in the following field & click Send request.',
                    style: TextStyle(
                      fontSize: textFontSize,
                      fontWeight: FontWeight.w400,
                      color: colorOnTet,
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: paddingVertical,
                  ),
                  child: TextfieldWidget(
                    textInsideTextfield: 'Email address',
                    prefixIconAsset: 'assets/envelope.svg',
                    upperText: 'Email',
                  ),
                ),
                Row(
                  children: [
                    SmallButtonWidget(
                      text: 'SEND REQUEST',
                      buttonOnPressed: sendRequestOnPressed,
                      blue: true,
                      arrow: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          BottomDeviderWidget(
            googleOnTap: googleOnTap,
            facebookOnTap: facebookOnTap,
          ),
        ],
      ),
    );
  }
}
