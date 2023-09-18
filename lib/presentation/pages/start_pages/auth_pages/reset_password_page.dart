import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/presentation/widgets/buttons/small_button_widget.dart';
import 'package:news_app/presentation/widgets/textfield_widget.dart';

class ResetPasswordPage extends StatelessWidget {
  static const double appbarTextFontSize = 16.0;
  static const double textFontSize = 32.0;
  static const double logoTextFontSize = 24.0;
  static const double sizedBoxWigth = 12.0;
  static const double pictureHeight = 40.0;
  static const double leadingWidth = 135.0;
  static const double containerMarginTop = 32.0;
  static const double containerMarginLeft = 20.0;
  static const double containerMarginRight = 20.0;
  static const double textfieldPaddingTop = 18.0;
  void LoginOnPressed() {}
  void resetOnPressed() {}

  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color colorSurf = colorScheme.surface;
    final Color colorOnSurf = colorScheme.onSurface;

    return Scaffold(
      backgroundColor: colorSurf,
      appBar: AppBar(
        shape: Border(
          bottom: BorderSide(color: Colors.black12),
        ),
        backgroundColor: colorSurf,
        elevation: 0.0,
        leadingWidth: leadingWidth,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              'assets/newspaper-fill1.svg',
              height: pictureHeight,
            ),
            Text(
              'Papary',
              style: TextStyle(
                fontSize: logoTextFontSize,
                fontWeight: FontWeight.w500,
                color: colorOnSurf,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: LoginOnPressed,
            child: Text(
              'Log in',
              style: TextStyle(
                fontSize: appbarTextFontSize,
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
          Expanded(
            child: Image.asset('assets/images/Security.png'),
          ),
          Text(
            'Reset Password',
            style: TextStyle(
              fontSize: textFontSize,
              fontWeight: FontWeight.w600,
              color: colorOnSurf,
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                top: containerMarginTop,
                left: containerMarginLeft,
                right: containerMarginRight,
              ),
              child: Column(
                children: [
                  TextfieldWidget(
                    textInsideTextfield: 'Create password',
                    upperText: 'Password',
                    prefixIconAsset: 'assets/lock.svg',
                    obscureText: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: textfieldPaddingTop,
                      bottom: containerMarginTop,
                    ),
                    child: TextfieldWidget(
                      textInsideTextfield: 'Confirm password',
                      upperText: 'Confirm Password',
                      prefixIconAsset: 'assets/lock.svg',
                      obscureText: true,
                    ),
                  ),
                  Row(
                    children: [
                      SmallButtonWidget(
                        text: 'RESET PASSWORD',
                        buttonOnPressed: resetOnPressed,
                        blue: true,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
