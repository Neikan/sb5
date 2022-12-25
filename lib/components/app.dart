// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:simple_app/consts/routes_and_tabs.dart';
import 'package:simple_app/utils/routes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoute,
      initialRoute: appDrawerHome.route,
    );
  }
}
