import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_architecture/ui/views/home/home_view.dart';
import 'package:flutter_architecture/ui/views/startup/startup_view.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  StartupView startupView;
  HomeView homeView;
}
