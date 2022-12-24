// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:simple_app/components/app_image_network.dart';

final _color = Colors.grey.shade300;

class TabImage extends StatelessWidget {
  final String image;
  final bool isLast;

  const TabImage({
    Key? key,
    required this.image,
    required this.isLast,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _decoration = BoxDecoration(
      border: Border(
        bottom: isLast ? BorderSide.none : BorderSide(color: _color),
      ),
    );

    return Container(
      child: AppImageNetwork(image: image),
      decoration: _decoration,
      height: 200,
    );
  }
}
