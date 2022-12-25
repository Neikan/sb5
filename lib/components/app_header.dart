// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:simple_app/styles/text.dart';
import 'package:simple_app/utils/common.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  final double? elevation;
  final String? title;
  final List<Widget>? tabs;
  final Widget? leading;

  const AppHeader({
    Key? key,
    this.title,
    this.elevation,
    this.leading,
    this.tabs,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(
        title != null && tabs != null ? 112 : 56,
      );

  @override
  AppBar build(BuildContext context) {
    final brightness = getStatusBarBrightness();

    return AppBar(
      elevation: elevation,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: brightness,
        statusBarBrightness: brightness,
      ),
      backgroundColor: Colors.white,
      bottom: _buildTabBar(),
      title: title != null ? Text(title!, style: headerTextStyles) : null,
      iconTheme: IconThemeData(color: Colors.grey[700]),
      leading: leading,
      actions: [
        Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.account_circle_outlined),
            onPressed: () => Scaffold.of(context).openEndDrawer(),
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          ),
        ),
      ],
    );
  }

  PreferredSizeWidget? _buildTabBar() {
    if (tabs == null) return null;

    return TabBar(
      enableFeedback: true,
      indicatorColor: Colors.green,
      indicatorWeight: 3.0,
      labelColor: Colors.green,
      tabs: tabs ?? [],
      unselectedLabelColor: Colors.grey,
    );
  }
}
