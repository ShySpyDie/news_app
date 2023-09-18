import 'package:flutter/material.dart';
import 'package:news_app/presentation/widgets/part_of_category_list_view_widget.dart';

class CategoryPage extends StatelessWidget {
  static const double appbarFontSize = 16.0;
  static const double textButtonFontSize = 16.0;
  void onBuisnessTap() {}
  void onFoodTap() {}
  void onOfficeTap() {}
  void onFinanceTap() {}
  void onITTap() {}
  void onOfficeProdTap() {}
  void onPersonalDevTap() {}
  void onDesignTap() {}
  void onLifestyleTap() {}
  void onPhotographyTap() {}
  void onHealthTap() {}
  void onDevelopmentTap() {}
  void arrowBackOnPressed() {}
  void applyOnPressed() {}

  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        backgroundColor: colorScheme.surface,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Category',
          style: TextStyle(
            color: colorScheme.onPrimary,
            fontSize: appbarFontSize,
            fontWeight: FontWeight.w600,
          ),
        ),
        shape: Border(
          bottom: BorderSide(
            color: Colors.black12,
          ),
        ),
        leading: IconButton(
          onPressed: arrowBackOnPressed,
          icon: Icon(
            Icons.arrow_back,
            color: colorScheme.onSurface,
          ),
        ),
        actions: [
          TextButton(
            onPressed: applyOnPressed,
            child: Text(
              'Apply',
              style: TextStyle(
                color: colorScheme.onSurface,
                fontWeight: FontWeight.w600,
                fontSize: textButtonFontSize,
              ),
            ),
          ),
          const SizedBox(width: 8.0),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(16.0),
        child: Expanded(
          child: ListView(
            children: [
              PartOfCategoryListViewWidget(
                assetNameA: 'assets/categoryHandshake.svg',
                textInCardA: 'Buisness',
                colorA: const Color(0xFFE4F9E0),
                onTapA: onBuisnessTap,
                assetNameB: 'assets/categoryForkKnife.svg',
                textInCardB: 'Food & Culture',
                colorB: const Color(0xFFE6F0FD),
                onTapB: onFoodTap,
              ),
              PartOfCategoryListViewWidget(
                assetNameA: 'assets/categoryCoffee.svg',
                textInCardA: 'Office Producivity',
                colorA: const Color(0xFFFFE5E5),
                onTapA: onOfficeTap,
                assetNameB: 'assets/categoryCreditCard.svg',
                textInCardB: 'Finance & Accounting',
                colorB: const Color(0xFFFFF8E0),
                onTapB: onFinanceTap,
              ),
              PartOfCategoryListViewWidget(
                assetNameA: 'assets/categoryBuildings.svg',
                textInCardA: 'IT & Software',
                colorA: const Color(0xFFE6F0FD),
                onTapA: onITTap,
                assetNameB: 'assets/categoryBugDroid.svg',
                textInCardB: 'Office Producivity',
                colorB: const Color(0xFFF7E6FD),
                onTapB: onOfficeProdTap,
              ),
              PartOfCategoryListViewWidget(
                assetNameA: 'assets/categoryHandshake(blue).svg',
                textInCardA: 'Personal Development',
                colorA: const Color(0xFFF5F7FA),
                onTapA: onPersonalDevTap,
                assetNameB: 'assets/categoryPenNib.svg',
                textInCardB: 'Design',
                colorB: const Color(0xFFE4F9E0),
                onTapB: onDesignTap,
              ),
              PartOfCategoryListViewWidget(
                assetNameA: 'assets/categoryNotepad.svg',
                textInCardA: 'Lifestyle',
                colorA: const Color(0xFFFFF8E0),
                onTapA: onLifestyleTap,
                assetNameB: 'assets/categoryCamera.svg',
                textInCardB: 'Photography & Video',
                colorB: const Color(0xFFE6F0FD),
                onTapB: onPhotographyTap,
              ),
              PartOfCategoryListViewWidget(
                assetNameA: 'assets/categoryHeartBeat.svg',
                textInCardA: 'Health & Fitness',
                colorA: const Color(0xFFE4F9E0),
                onTapA: onHealthTap,
                assetNameB: 'assets/categoryBug.svg',
                textInCardB: 'Development',
                colorB: const Color(0xFFFFE5E5),
                onTapB: onDevelopmentTap,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
