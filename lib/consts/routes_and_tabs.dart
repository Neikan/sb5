// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:simple_app/models/app_bottom_bar.dart';
import 'package:simple_app/models/app_drawer.dart';

final appDrawerHome = AppDrawerItem(
  route: 'home',
  title: 'Home',
  iconData: Icons.home_outlined,
);

final appDrawerProfile = AppDrawerItem(
  route: 'profile',
  title: 'Profile',
  iconData: Icons.account_circle_outlined,
);

final appDrawerImages = AppDrawerItem(
  route: 'images',
  title: 'Images',
  iconData: Icons.image_outlined,
);

final appDrawerFiles = AppDrawerItem(
  route: 'files',
  title: 'Files',
  iconData: Icons.insert_drive_file_outlined,
);

List<AppDrawerItem> appDrawerList = [
  appDrawerHome,
  appDrawerProfile,
  appDrawerImages,
  appDrawerFiles,
];

final appBottomBarHome = AppBottomBarItem(
  title: 'Home',
  icon: Icon(Icons.home_outlined),
);

final appBottomBarChat = AppBottomBarItem(
  title: 'Chat',
  icon: Icon(Icons.message_outlined),
);

final appBottomBarAlbums = AppBottomBarItem(
  title: 'Albums',
  icon: Icon(Icons.album_outlined),
);

List<AppBottomBarItem> appBottomBarList = [
  appBottomBarHome,
  appBottomBarChat,
  appBottomBarAlbums
];
