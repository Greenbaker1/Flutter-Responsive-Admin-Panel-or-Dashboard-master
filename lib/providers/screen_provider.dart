
import 'package:admin/screens/dashboard/dashboard_screen.dart';
import 'package:admin/screens/main/main_screen.dart';
import 'package:admin/screens/general_data/general_data_screen.dart';
import 'package:flutter/cupertino.dart';

class ScreenProvider extends ChangeNotifier {
  late Widget _currentScreen = DashboardScreen(); //Stefan fragen (null safety)
  Widget get currentScreen => _currentScreen;
  set currentScreen(Widget newScreen) {
    _currentScreen = newScreen;
    notifyListeners();
  }

  void change_screen(CustomScreensEnum screen){
    switch(screen){
      case CustomScreensEnum.dashboard_screen:
        currentScreen = DashboardScreen();
        break;
      case CustomScreensEnum.overview_screen:
        currentScreen = OverviewScreen();
        break;
      default:
        currentScreen = DashboardScreen();
        break;
    }
  }
}

enum CustomScreensEnum {    //Stefan fragen
  dashboard_screen,
  overview_screen
}

// class ScreenProvider extends ChangeNotifier{
//   void change_screen(window){
//     MainScreen(window: window,);
//     notifyListeners();
//   }
// }