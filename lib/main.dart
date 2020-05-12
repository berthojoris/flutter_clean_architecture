import 'package:flutter/material.dart';
import 'package:flutter_architecture/app/locator.dart';
import 'package:stacked_services/stacked_services.dart';
import 'app/router.gr.dart';
import 'ui/views/partial_builds/partial_builds_view.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // initialRoute: Routes.startupView,
      home: PartialBuildView(),
      onGenerateRoute: Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
