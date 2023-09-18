import 'package:flutter/material.dart';
import 'package:news_app/presentation/widgets/drawer_widget.dart';
import 'package:news_app/presentation/widgets/follow_widget.dart';
import 'package:news_app/presentation/widgets/textfield_widget.dart';
import 'package:news_app/presentation/widgets/top_category_widget.dart';

class HomePage extends StatelessWidget {
  static const circleAvaterRadius = 20.0;
  static const leadingWidth = 68.0;
  static const titleSpacing = 20.0;

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      drawer: DrawerWidget(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: colorScheme.surface,
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            top: 4.0,
            bottom: 4.0,
          ),
          child: InkWell(
            // onTap: () => Scaffold.of(context).openDrawer(),
            child: CircleAvatar(
              radius: circleAvaterRadius,
            ),
          ),
        ),
        leadingWidth: leadingWidth,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: TextfieldWidget(
            textInsideTextfield: 'Search...',
            upperText: '',
            prefixIconAsset: 'assets/search.svg',
            visibility: false,
          ),
        ),
        titleSpacing: titleSpacing,
      ),
      body: ListView(
        children: [
          TopCategoryWidget(),
          FollowWidget(),
        ],
      ),
    );
  }
}
