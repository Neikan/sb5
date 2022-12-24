// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:simple_app/components/app_drawer.dart';
import 'package:simple_app/components/app_drawer_end.dart';
import 'package:simple_app/components/app_header.dart';
import 'package:simple_app/consts/routes_and_tabs.dart';
import 'package:simple_app/styles/text.dart';

class ScreenFiles extends StatefulWidget {
  const ScreenFiles({super.key});

  @override
  _ScreenFilesState createState() => _ScreenFilesState();
}

class _ScreenFilesState extends State<ScreenFiles>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  PersistentBottomSheetController<void>? _bottomSheetController;
  IconData _floatIconData = Icons.keyboard_arrow_up;

  void _handleToggleBottomSheet() {
    if (_bottomSheetController == null) {
      _bottomSheetController = scaffoldKey.currentState?.showBottomSheet(
        (_) => _buildBottomSheet(),
        backgroundColor: Colors.green[50],
      );

      setState(() {
        _floatIconData = Icons.keyboard_arrow_down;
      });
    } else {
      _bottomSheetController!.close();
      _bottomSheetController = null;

      setState(() {
        _floatIconData = Icons.keyboard_arrow_up;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: AppDrawer(),
      endDrawer: AppDrawerEnd(),
      appBar: AppHeader(
        title: appDrawerFiles.title,
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            appDrawerFiles.title,
            style: titleTextStyles,
          ),
        ),
      ),
      floatingActionButton: _buildFloatingActionButton(),
    );
  }

  Widget _buildFloatingActionButton() => FloatingActionButton(
        onPressed: _handleToggleBottomSheet,
        backgroundColor: Colors.green,
        child: Icon(_floatIconData),
      );

  Widget _buildBottomSheet() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1.0,
            blurRadius: 4.0,
            offset: Offset(0.0, -2.0),
          ),
        ],
      ),
      height: 150,
      child: Center(
        child: Text(
          'BottomSheet',
          style: titleTextStyles,
        ),
      ),
    );
  }
}
