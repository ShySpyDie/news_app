import 'package:flutter/material.dart';
import 'package:news_app/presentation/widgets/onboarding_widget.dart';

class OnboardingB extends StatelessWidget {
  static const double valueNotifier = 1.0;
  void skipButtonOnPressed() {}
  void nextButtonOnPressed() {}

  const OnboardingB({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingWidget(
      image: 'assets/images/Illustration2.png',
      headerText: 'Find news with better filters',
      text: 'In sed massa sit amet nulla fringilla ultrices. Quisque vehicula gravida diam nec sodales. Donec pretium sem a justo egestas tincidunt.',
      grayButtonText: 'SKIP',
      blueButtonText: 'NEXT',
      valueNotifier: valueNotifier,
      grayButtonOnPressed: skipButtonOnPressed,
      blueButtonOnPressed: nextButtonOnPressed,
    );
  }
}
