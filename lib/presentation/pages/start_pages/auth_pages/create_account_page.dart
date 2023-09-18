import 'package:flutter/material.dart';
import 'package:news_app/presentation/widgets/buttons/sing_in_with_button_widget.dart';
import 'package:news_app/presentation/widgets/buttons/small_button_widget.dart';
import 'package:news_app/presentation/widgets/double_text_widget.dart';
import 'package:news_app/presentation/widgets/textfield_widget.dart';

class CreateAccountPage extends StatelessWidget {
  static const double textFontSize = 16.0;
  static const double leadingWidth = 60.0;
  static const double sizedBoxWigth = 12.0;
  static const double containerMarginLeft = 20.0;
  static const double containerMarginRight = 20.0;
  static const double containerMarginTop = 40.0;
  static const double containerMarginBottom = 40.0;
  static const double paddingBottom = 32.0;
  static const double textfieldPadding = 18.0;
  static const double textfieldPaddingBottom = 32.0;
  static const double fontSize = 12.0;
  static const double dividerMargin = 16.0;
  void arrowBackOnPressed() {}
  void loginOnPressed() {}
  void createAccountOnPressed() {}
  void googleOnTap() {}

  const CreateAccountPage({super.key});

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
        leading: IconButton(
          onPressed: arrowBackOnPressed,
          icon: Icon(
            Icons.arrow_back,
            color: colorOnSurf,
          ),
        ),
        actions: [
          TextButton(
            onPressed: loginOnPressed,
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
                Padding(
                  padding: const EdgeInsets.only(bottom: paddingBottom),
                  child: DoubleTextWidget(
                    upperText: 'HELLO!',
                    lowerText: 'Create account',
                  ),
                ),
                TextfieldWidget(
                  textInsideTextfield: 'Full name',
                  upperText: 'Name',
                  prefixIconAsset: 'assets/user.svg',
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: textfieldPadding,
                  ),
                  child: TextfieldWidget(
                    textInsideTextfield: 'Email adress',
                    upperText: 'Email',
                    prefixIconAsset: 'assets/envelope.svg',
                  ),
                ),
                TextfieldWidget(
                  textInsideTextfield: 'Create password',
                  upperText: 'Password',
                  prefixIconAsset: 'assets/lock.svg',
                  obscureText: true,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: textfieldPadding,
                    bottom: textfieldPaddingBottom,
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
                      text: 'CREATE ACCOUNT',
                      buttonOnPressed: createAccountOnPressed,
                      blue: true,
                      arrow: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          Column(
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
                  left: containerMarginLeft,
                  right: containerMarginRight,
                  bottom: containerMarginBottom,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: paddingBottom,
                      ),
                      child: SingInWithButtonWidget(
                        logoAsset: 'assets/google.svg',
                        text: 'Create account with Google',
                        onTap: googleOnTap,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
