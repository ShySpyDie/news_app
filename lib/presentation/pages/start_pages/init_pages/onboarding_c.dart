import 'package:flutter/material.dart';
import 'package:news_app/presentation/widgets/onboarding_widget.dart';

class OnboardingC extends StatelessWidget {
  static const double valueNotifier = 2.0;
  void skipButtonOnPressed() {}
  void nextButtonOnPressed() {}

  const OnboardingC({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingWidget(
      image: 'assets/images/Illustration3.png',
      headerText: 'Bookmark, share & comments on news',
      text: 'Quisque vitae finibus metus. Sed non placerat neque. Phasellus erat ante, auctor vel scelerisque vitae, facilisis sed nisi. ',
      grayButtonText: 'REGISTER NOW',
      blueButtonText: 'LOGIN',
      valueNotifier: valueNotifier,
      grayButtonOnPressed: skipButtonOnPressed,
      blueButtonOnPressed: nextButtonOnPressed,
    );
  }
}
