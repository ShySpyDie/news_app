import 'package:flutter/material.dart';
import 'package:news_app/presentation/widgets/onboarding_widget.dart';

class OnboardingA extends StatelessWidget {
  static const double valueNotifier = 0.0;
  void skipButtonOnPressed() {}
  void nextButtonOnPressed() {}

  const OnboardingA({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingWidget(
      image: 'assets/images/Illustration1.png',
      headerText: 'Explore thousands of latest news',
      text: 'Mauris urna velit, congue et aliquam non, imperdiet id massa. Etiam commodo interdum eros, eget hendrerit ex rhoncus in.',
      grayButtonText: 'SKIP',
      blueButtonText: 'NEXT',
      valueNotifier: valueNotifier,
      grayButtonOnPressed: skipButtonOnPressed,
      blueButtonOnPressed: nextButtonOnPressed,
    );
  }
}
