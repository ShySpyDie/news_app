import 'package:flutter/material.dart';
import 'package:news_app/presentation/widgets/buttons/follow_button_widget.dart';

class FollowWidget extends StatelessWidget {
  static const double containerMarginSymHorizontal = 20.0;
  static const double containerMarginSymVertical = 32.0;
  static const double upperTextfontSize = 16.0;
  static const double sizedBox = 16.0;

  void facebookFollowOnPressed() {}
  void twitterFollowOnPressed() {}
  void whatsappFollowOnPressed() {}
  void redditFollowOnPressed() {}
  void pinterestFollowOnPressed() {}
  void linkedinFollowOnPressed() {}

  const FollowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color colorOnPr = colorScheme.onPrimary;

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: containerMarginSymHorizontal,
        vertical: containerMarginSymVertical,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'FOLLOW ME',
                style: TextStyle(
                  color: colorOnPr,
                  fontSize: upperTextfontSize,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(
            height: sizedBox,
          ),
          Row(
            children: [
              FollowButtonWidget(
                text: 'Facebook',
                color: const Color(0xFF4267B2),
                buttonOnPressed: facebookFollowOnPressed,
                assetName: 'assets/followFacebook.svg',
              ),
              SizedBox(
                width: sizedBox,
              ),
              FollowButtonWidget(
                text: 'Twitter',
                color: const Color(0xFF1DA1F2),
                buttonOnPressed: twitterFollowOnPressed,
                assetName: 'assets/followTwitter.svg',
              ),
            ],
          ),
          SizedBox(
            height: sizedBox,
          ),
          Row(
            children: [
              FollowButtonWidget(
                text: 'Whatsapp',
                color: const Color(0xFF4FCE5D),
                buttonOnPressed: whatsappFollowOnPressed,
                assetName: 'assets/followWhatsapp.svg',
              ),
              SizedBox(
                width: sizedBox,
              ),
              FollowButtonWidget(
                text: 'Reddit',
                color: const Color(0xFFF74101),
                buttonOnPressed: redditFollowOnPressed,
                assetName: 'assets/followReddit.svg',
              ),
            ],
          ),
          SizedBox(
            height: sizedBox,
          ),
          Row(
            children: [
              FollowButtonWidget(
                text: 'Pinterest',
                color: const Color(0xFFE60023),
                buttonOnPressed: pinterestFollowOnPressed,
                assetName: 'assets/followPinterest.svg',
              ),
              SizedBox(
                width: sizedBox,
              ),
              FollowButtonWidget(
                text: 'Linkedin',
                color: const Color(0xFF0077B5),
                buttonOnPressed: linkedinFollowOnPressed,
                assetName: 'assets/followLinkedin.svg',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
