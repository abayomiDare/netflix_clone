import 'package:flutter/material.dart';

class StateManager extends ChangeNotifier {
  late int _activeTab = 0;
  late final Color _activeColor = Colors.white;

  int get getActiveTab {
    return _activeTab;
  }

  Color get getActiveColor {
    return _activeColor;
  }

  void updateTab(int index) {
    _activeTab = index;
    _activeTab == index ? _activeColor : Colors.white.withOpacity(0.5);
    notifyListeners();
  }

// void updateColor(int index) {
//
//   notifyListeners();
// }
}
