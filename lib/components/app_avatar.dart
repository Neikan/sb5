// Flutter imports:
import 'package:flutter/material.dart';

class AppAvatar extends StatelessWidget {
  final double? size, bgSize;

  const AppAvatar({
    Key? key,
    this.size,
    this.bgSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CircleAvatar(
        radius: 48.0,
        backgroundImage: NetworkImage('https://neikan.pro/img/foto/me.png'),
      ),
    );
  }
}
