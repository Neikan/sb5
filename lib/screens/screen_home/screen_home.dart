// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:simple_app/components/app_bottom_sheet.dart';
import 'package:simple_app/components/app_drawer.dart';
import 'package:simple_app/components/app_drawer_end.dart';
import 'package:simple_app/components/app_header.dart';
import 'package:simple_app/consts/routes_and_tabs.dart';
import 'package:simple_app/styles/text.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      length: appBottomBarList.length,
      vsync: this,
    );

    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
    });
  }

  void _handleTapBarItem(int index) {
    setState(() {
      _selectedIndex = index;
      _tabController.index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      endDrawer: AppDrawerEnd(),
      appBar: AppHeader(
        title: appDrawerHome.title,
      ),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigationBar(),
      floatingActionButton: _buildFloatingActionButton(),
    );
  }

  Widget _buildBody() => SafeArea(
        child: TabBarView(
          controller: _tabController,
          children: appBottomBarList
              .map(
                (item) => Center(
                  child: Text(
                    item.title,
                    style: titleTextStyles,
                  ),
                ),
              )
              .toList(),
        ),
      );

  Widget _buildBottomNavigationBar() => BottomNavigationBar(
        items: appBottomBarList
            .map(
              (item) => BottomNavigationBarItem(
                label: item.title,
                icon: item.icon,
              ),
            )
            .toList(),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _handleTapBarItem,
      );

  Widget _buildFloatingActionButton() => FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            builder: (_) => AppBottomSheet(),
            context: context,
            constraints: BoxConstraints(maxHeight: 150),
          );
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      );
}
