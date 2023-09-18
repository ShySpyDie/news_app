import 'package:flutter/material.dart';
import 'package:news_app/presentation/widgets/buttons/single_category_card_widget.dart';

class PartOfCategoryListViewWidget extends StatelessWidget {
  final String assetNameA;
  final String textInCardA;
  final Color colorA;
  final String assetNameB;
  final String textInCardB;
  final Color colorB;
  final void Function() onTapA;
  final void Function() onTapB;
  // final double sizedBoxWidth;

  const PartOfCategoryListViewWidget({
    super.key,
    required this.assetNameA,
    required this.textInCardA,
    required this.colorA,
    required this.assetNameB,
    required this.textInCardB,
    required this.colorB,
    required this.onTapA,
    required this.onTapB,
    // this.sizedBoxWidth = double.infinity,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: SingleCategoryCardWidget(
              assetName: assetNameA,
              textInCard: textInCardA,
              color: colorA,
              onTap: onTapA,
              // sizedBoxWidth: double.minPositive,
            ),
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: SingleCategoryCardWidget(
              assetName: assetNameB,
              textInCard: textInCardB,
              color: colorB,
              onTap: onTapB,
              // sizedBoxWidth: 179,
            ),
          ),
        ],
      ),
    );
  }
}
