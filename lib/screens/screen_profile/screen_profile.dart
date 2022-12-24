// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:simple_app/components/app_divider.dart';
import 'package:simple_app/components/app_drawer.dart';
import 'package:simple_app/components/app_drawer_end.dart';
import 'package:simple_app/components/app_header.dart';
import 'package:simple_app/consts/routes_and_tabs.dart';
import 'package:simple_app/styles/text.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      endDrawer: AppDrawerEnd(),
      appBar: AppHeader(
        title: appDrawerProfile.title,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildUserAttribute('Name', 'Eugene'),
              _buildUserAttribute('Surname', 'Sladkov'),
              _buildUserAttribute('Login', 'Neikan', isLast: true),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUserAttribute(
    String title,
    String value, {
    bool? isLast,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title.toUpperCase(),
          style: getBrandTextStyle(fontWeight: FontWeight.w500),
        ),
        Padding(
          padding: EdgeInsets.only(top: 16),
          child: Text(value, style: getBaseTextStyle()),
        ),
        isLast == true ? SizedBox() : AppDivider(paddingY: 16),
      ],
    );
  }
}
