import 'package:flutter/material.dart';
import 'package:news_app/presentation/widgets/bottom_devider_widget.dart';
import 'package:news_app/presentation/widgets/buttons/small_button_widget.dart';
import 'package:news_app/presentation/widgets/double_text_widget.dart';
import 'package:news_app/presentation/widgets/obusfacted_textfield_widget.dart';
import 'package:news_app/presentation/widgets/textfield_widget.dart';

class SingInPage extends StatelessWidget {
  static const double appbarFontSize = 16.0;
  static const double leadingWidth = 60.0;
  static const double sizedBoxWigth = 12.0;
  static const double containerMarginLeft = 20.0;
  static const double containerMarginRight = 20.0;
  static const double containerMarginTop = 40.0;
  static const double paddingBottom = 32.0;
  static const double textfieldPaddingTop = 18.0;

  void arrowBackOnPressed() {}
  void createAccountOnPressed() {}
  void singInOnPressed() {}
  void googleOnTap() {}
  void facebookOnTap() {}

  const SingInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color colorSurf = colorScheme.surface;
    final Color colorOnPr = colorScheme.onSurface;

    return Scaffold(
      backgroundColor: colorSurf,
      appBar: AppBar(
        shape: Border(bottom: BorderSide(color: Colors.black12)),
        backgroundColor: colorSurf,
        elevation: 0.0,
        leadingWidth: leadingWidth,
        leading: IconButton(
          onPressed: arrowBackOnPressed,
          icon: Icon(
            Icons.arrow_back,
            color: colorOnPr,
          ),
        ),
        actions: [
          TextButton(
            onPressed: createAccountOnPressed,
            child: Text(
              'Create account',
              style: TextStyle(
                fontSize: appbarFontSize,
                fontWeight: FontWeight.w600,
                color: colorOnPr,
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
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: paddingBottom,
                  ),
                  child: DoubleTextWidget(
                    upperText: 'WELCOME BACK!',
                    lowerText: 'Login',
                  ),
                ),
                TextfieldWidget(
                  textInsideTextfield: 'Email address',
                  upperText: 'Email',
                  prefixIconAsset: 'assets/envelope.svg',
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: paddingBottom,
                    top: textfieldPaddingTop,
                  ),
                  child: ObusfactedTextfieldWidget(
                    buttonText: 'Forget Password',
                    textInsideTextfield: 'Password',
                    prefixIconAsset: 'assets/lock.svg',
                    upperText: 'Password',
                    obscureText: true,
                  ),
                ),
                Row(
                  children: [
                    SmallButtonWidget(
                      text: 'SING IN',
                      buttonOnPressed: singInOnPressed,
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
