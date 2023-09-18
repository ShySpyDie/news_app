import 'package:flutter/material.dart';
import 'package:news_app/presentation/widgets/buttons/small_button_widget.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class EmailVerificationPage extends StatelessWidget {
  static const double textFontSize = 16.0;
  static const double leadingWidth = 60.0;
  static const double sizedBoxWigth = 12.0;
  static const double headerTextFontSize = 32.0;
  static const double textPaddingTop = 16.0;
  static const double containerMarginSym = 20.0;
  static const int verificationCodeLength = 6;
  static const double verificationCodeWidth = 1.5;
  final String email = 'Kevin.gi@email.com';
  void arrowBackOnPressed() {}
  void resentCodeOnPressed() {}
  void verifiedOnPressed() {}

  const EmailVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color colorSurf = colorScheme.surface;
    final Color colorOnSurf = colorScheme.onSurface;
    final Color colorOnPr = colorScheme.onPrimary;
    final Color colorOnTet = colorScheme.onTertiary;
    final Color colorPr = colorScheme.primary;

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
            onPressed: resentCodeOnPressed,
            child: Text(
              'Recent Code',
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
          Expanded(
            child: Image.asset('assets/images/Security1.png'),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: containerMarginSym),
              child: Column(
                children: [
                  Text(
                    'Verified your email',
                    style: TextStyle(
                      fontSize: headerTextFontSize,
                      fontWeight: FontWeight.w600,
                      color: colorOnPr,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: textPaddingTop),
                    child: Text(
                      'Please enter the 6 digit verification code sent to $email to confirm your email address.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: textFontSize,
                        fontWeight: FontWeight.w400,
                        color: colorOnTet,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40.0),
                    child: VerificationCode(
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      underlineWidth: verificationCodeWidth,
                      underlineColor: colorPr,
                      underlineUnfocusedColor: Colors.black12,
                      keyboardType: TextInputType.number,
                      length: verificationCodeLength,
                      digitsOnly: true,
                      fullBorder: true,
                      onCompleted: (value) => '',
                      onEditing: (value) => true,
                    ),
                  ),
                  Row(
                    children: [
                      SmallButtonWidget(
                        text: 'VERIFIED ME',
                        buttonOnPressed: verifiedOnPressed,
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
