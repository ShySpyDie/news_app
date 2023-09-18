import 'package:flutter/material.dart';
import 'package:flutter_sliding_tutorial/flutter_sliding_tutorial.dart';
import 'package:news_app/presentation/widgets/buttons/small_button_widget.dart';

class OnboardingWidget extends StatelessWidget {
  static const double marginOnlyLeft = 20.0;
  static const double marginOnlyRight = 20.0;
  static const double marginOnlyBottom = 40.0;
  static const double sizedBoxWigth = 16.0;
  static const double activeIndicatorSize = 24.0;
  static const double inactiveIndicatorSize = 8.0;
  static const int indicatorCount = 3;
  static const double headerFontSize = 20.0;
  static const double textFontSize = 16.0;
  static const double slidingIndicatorPadding = 32.0;
  static const double textTopPadding = 16.0;
  static const double textBottomPadding = 54.0;
  final String image;
  final String headerText;
  final String text;
  final String grayButtonText;
  final String blueButtonText;
  final double valueNotifier;
  final Function() grayButtonOnPressed;
  final Function() blueButtonOnPressed;

  const OnboardingWidget({
    super.key,
    required this.image,
    required this.headerText,
    required this.text,
    required this.grayButtonText,
    required this.blueButtonText,
    required this.valueNotifier,
    required this.grayButtonOnPressed,
    required this.blueButtonOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color colorSurf = colorScheme.surface;
    final Color colorOnSurf = colorScheme.onSurface;
    final Color colorOnTet = colorScheme.onTertiary;

    return Scaffold(
      backgroundColor: colorSurf,
      body: Column(
        children: [
          Expanded(
            child: Image.asset(
              image,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: marginOnlyLeft,
              right: marginOnlyRight,
              bottom: marginOnlyBottom,
            ),
            child: Column(
              children: [
                Text(
                  headerText,
                  style: TextStyle(
                    fontSize: headerFontSize,
                    color: colorOnSurf,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: textTopPadding,
                    bottom: textBottomPadding,
                  ),
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: textFontSize,
                      fontWeight: FontWeight.w400,
                      color: colorOnTet,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmallButtonWidget(
                      blue: false,
                      text: grayButtonText,
                      buttonOnPressed: grayButtonOnPressed,
                    ),
                    SizedBox(
                      width: sizedBoxWigth,
                    ),
                    SmallButtonWidget(
                      blue: true,
                      text: blueButtonText,
                      buttonOnPressed: blueButtonOnPressed,
                      arrow: true,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: slidingIndicatorPadding),
                  child: SlidingIndicator(
                    notifier: ValueNotifier(valueNotifier),
                    activeIndicator: Image.asset(
                      'assets/images/DotActive.png',
                    ),
                    activeIndicatorSize: activeIndicatorSize,
                    inactiveIndicatorSize: inactiveIndicatorSize,
                    inActiveIndicator: Image.asset('assets/images/DotInactive.png'),
                    indicatorCount: indicatorCount,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
