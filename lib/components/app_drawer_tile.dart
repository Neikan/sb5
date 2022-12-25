// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:simple_app/models/app_drawer.dart';
import 'package:simple_app/styles/text.dart';

class AppDrawerTile extends StatelessWidget {
  final AppDrawerItem item;
  final bool? withoutArrow;

  const AppDrawerTile({
    Key? key,
    required this.item,
    this.withoutArrow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _currentRoute = ModalRoute.of(context)!.settings.name;

    final _handleTap = item.onTap ??
        () {
          Navigator.pop(context);

          if (_currentRoute != item.route) {
            Navigator.pushReplacementNamed(context, item.route);
          }
        };

    final _leading = Icon(
      item.iconData,
      color: Colors.green,
    );

    final _title = Text(
      item.title,
      style: getBaseTextStyle(fontWeight: FontWeight.w500),
    );

    final _trailing = withoutArrow == true
        ? null
        : Icon(
            Icons.arrow_forward_ios,
            color: Colors.green,
          );

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      horizontalTitleGap: 0.0,
      leading: _leading,
      title: _title,
      trailing: _trailing,
      onTap: _handleTap,
    );
  }
}
