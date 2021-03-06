import 'package:flutter/material.dart';
import 'package:flutter_architecture/app/locator.dart';
import 'package:stacked_services/stacked_services.dart';
import 'app/router.gr.dart';
import 'ui/views/stream_example/stream_example_view.dart';

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
      home: StreamExampleView(),
      onGenerateRoute: Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
