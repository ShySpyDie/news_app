import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/presentation/widgets/buttons/drawer_element_widget.dart';

class DrawerWidget extends StatelessWidget {
  static const double drawerWidth = 360.0;
  static const double nameTextFontSize = 18.0;
  static const double emailTextFontSize = 14.0;
  static const double sizedBoxWidth = 8.0;
  static const double avatarRadius = 25.0;
  static const double switchScale = 0.8;

  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color colorSurf = colorScheme.surface;
    final Color colorOnPr = colorScheme.onPrimary;
    final Color colorOnTet = colorScheme.onTertiary;
    final Color colorPr = colorScheme.primary;

    return Drawer(
      width: drawerWidth,
      backgroundColor: colorSurf,
      child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: colorSurf,
              border: Border(
                bottom: BorderSide(color: Colors.black12),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    bottom: 20.0,
                    right: 16.0,
                    top: 20.0,
                  ),
                  child: CircleAvatar(radius: avatarRadius),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kevin',
                      style: TextStyle(
                        fontSize: nameTextFontSize,
                        fontWeight: FontWeight.w400,
                        color: colorOnPr,
                      ),
                    ),
                    SizedBox(
                      height: sizedBoxWidth,
                    ),
                    Text(
                      'test.@text.test',
                      style: TextStyle(
                        fontSize: emailTextFontSize,
                        fontWeight: FontWeight.w400,
                        color: colorOnTet,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          DrawerElementWidget(
            assetName: 'assets/drawerSun.svg',
            text: 'Dark Mode',
            onTap: () {},
            widget: Transform.scale(
              scale: switchScale,
              child: CupertinoSwitch(
                activeColor: colorPr,
                value: false,
                onChanged: (value) => true,
              ),
            ),
          ),
          DrawerElementWidget(
            assetName: 'assets/drawerFlagUSA.svg',
            text: 'Language',
            onTap: () {},
          ),
          DrawerElementWidget(
            assetName: 'assets/drawerPencilLine.svg',
            text: 'Edit Profile',
            onTap: () {},
          ),
          DrawerElementWidget(
            assetName: 'assets/drawerBookmark.svg',
            text: 'Bookmark',
            onTap: () {},
          ),
          DrawerElementWidget(
            assetName: 'assets/drawerStar.svg',
            text: 'Rate this app',
            onTap: () {},
          ),
          DrawerElementWidget(
            assetName: 'assets/drawerHeadset.svg',
            text: 'Help Centers',
            onTap: () {},
          ),
          DrawerElementWidget(
            assetName: 'assets/drawerNotepad.svg',
            text: 'Terms & Condition',
            onTap: () {},
          ),
          DrawerElementWidget(
            assetName: 'assets/drawerSignOut.svg',
            text: 'Log-out',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
