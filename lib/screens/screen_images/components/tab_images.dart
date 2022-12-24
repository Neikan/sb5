// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:simple_app/consts/data.dart';
import 'package:simple_app/consts/enums.dart';
import 'package:simple_app/screens/screen_images/components/tab_image.dart';

class TabImages extends StatelessWidget {
  final TabImagesEnum tab;

  const TabImages({
    Key? key,
    required this.tab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _images = imagesData[tab]!;

    return Scaffold(
      body: ListView.builder(
        key: PageStorageKey(tab.name),
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        itemCount: _images.length,
        itemBuilder: (_, index) => TabImage(
          image: _images[index],
          isLast: _images.length == index + 1,
        ),
      ),
    );
  }
}
