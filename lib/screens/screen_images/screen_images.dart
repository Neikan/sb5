// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:simple_app/components/app_drawer.dart';
import 'package:simple_app/components/app_drawer_end.dart';
import 'package:simple_app/components/app_header.dart';
import 'package:simple_app/consts/enums.dart';
import 'package:simple_app/consts/routes_and_tabs.dart';
import 'package:simple_app/screens/screen_images/components/tab_images.dart';

class ScreenImages extends StatelessWidget {
  const ScreenImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: TabImagesEnum.values.length,
      child: Scaffold(
        drawer: AppDrawer(),
        endDrawer: AppDrawerEnd(),
        appBar: AppHeader(
          title: appDrawerImages.title,
          tabs: [
            Tab(text: 'My photos'),
            Tab(text: 'Galary'),
          ],
        ),
        body: SafeArea(
          child: TabBarView(
            physics: BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            children: [
              TabImages(tab: TabImagesEnum.MY_PHOTOS),
              TabImages(tab: TabImagesEnum.GALARY),
            ],
          ),
        ),
      ),
    );
  }
}
