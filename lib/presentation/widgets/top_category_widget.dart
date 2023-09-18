import 'package:flutter/material.dart';
import 'package:news_app/presentation/widgets/buttons/single_category_card_widget.dart';

class TopCategoryWidget extends StatelessWidget {
  static const double textButtonFontSize = 12.0;
  static const double textButtonIconSize = 16.0;
  static const double textFontSize = 16.0;
  static const double containerHeightA = 165.0;
  static const double containerHeightB = 95.0;
  static const double sizedBoxWidth = 180.0;
  void onBuisnessTap() {}
  void onFoodTap() {}
  void onOfficeTap() {}
  void onFinanceTap() {}

  const TopCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Container(
      height: containerHeightA,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: 10.0,
              right: 20.0,
              top: 32.0,
              left: 20.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'TOP CATEGORY',
                  style: TextStyle(
                    fontSize: textFontSize,
                    fontWeight: FontWeight.w600,
                    color: colorScheme.onPrimary,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'View all',
                        style: TextStyle(
                          fontSize: textButtonFontSize,
                          fontWeight: FontWeight.w600,
                          color: colorScheme.primary,
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: textButtonIconSize,
                        color: colorScheme.primary,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: containerHeightB,
            margin: const EdgeInsets.only(left: 20.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SingleCategoryCardWidget(
                  assetName: 'assets/categoryHandshake.svg',
                  textInCard: 'Buisness',
                  color: const Color(0xFFE4F9E0),
                  onTap: onBuisnessTap,
                  sizedBoxWidth: sizedBoxWidth,
                ),
                const SizedBox(
                  width: 12.0,
                ),
                SingleCategoryCardWidget(
                  assetName: 'assets/categoryForkKnife.svg',
                  textInCard: 'Food & Culture',
                  color: const Color(0xFFE6F0FD),
                  onTap: onFoodTap,
                  sizedBoxWidth: sizedBoxWidth,
                ),
                const SizedBox(
                  width: 12.0,
                ),
                SingleCategoryCardWidget(
                  assetName: 'assets/categoryCoffee.svg',
                  textInCard: 'Office Producivity',
                  color: const Color(0xFFFFE5E5),
                  onTap: onOfficeTap,
                  sizedBoxWidth: sizedBoxWidth,
                ),
                const SizedBox(
                  width: 12.0,
                ),
                SingleCategoryCardWidget(
                  assetName: 'assets/categoryCreditCard.svg',
                  textInCard: 'Finance & Accounting',
                  color: const Color(0xFFFFF8E0),
                  onTap: onFinanceTap,
                  sizedBoxWidth: sizedBoxWidth,
                ),
                const SizedBox(
                  width: 20.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
