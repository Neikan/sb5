// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:simple_app/consts/routes_and_tabs.dart';
import 'package:simple_app/screens/screen_files/screen_files.dart';
import 'package:simple_app/screens/screen_home/screen_home.dart';
import 'package:simple_app/screens/screen_images/screen_images.dart';
import 'package:simple_app/screens/screen_profile/screen_profile.dart';

Map<String, Widget Function(BuildContext _)> routes = {
  appDrawerHome.route: (_) => const ScreenHome(),
  appDrawerProfile.route: (_) => const ScreenProfile(),
  appDrawerImages.route: (_) => const ScreenImages(),
  appDrawerFiles.route: (_) => const ScreenFiles(),
};

Route<dynamic> generateRoute(RouteSettings settings) => MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) => routes[settings.name]!(context),
    );
