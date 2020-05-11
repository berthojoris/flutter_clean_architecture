import 'package:flutter_architecture/app/locator.dart';
import 'package:flutter_architecture/app/router.gr.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  String _title = "Startup View";
  String get title => _title;

  Future navigateToHome() async {
    await _navigationService.navigateTo(Routes.homeView);
  }
}
