// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:simple_app/components/app_avatar.dart';

class AppDrawerEnd extends StatelessWidget {
  const AppDrawerEnd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppAvatar(),
              Padding(
                padding: EdgeInsets.all(16),
                child: Text('Eugene <Neikan> Sladkov'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
