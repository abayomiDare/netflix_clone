import 'package:flutter/material.dart';
import '../components/json/appbar_lead_items.dart';

class StateManager extends ChangeNotifier {
  late int _activeTab = 0;
  late final Color _activeColor = Colors.white;
  late dynamic _leadItem = leadItems[_activeTab]['item'];

  int get getActiveTab {
    return _activeTab;
  }

  Color get getActiveColor {
    return _activeColor;
  }

  dynamic get getLeadItemType {
    return _leadItem;
  }

  void updateTab(int index) {
    _activeTab = index;
    _activeTab == index ? _activeColor : Colors.white.withOpacity(0.5);
    _leadItem = leadItems[index]['item'];
    notifyListeners();
  }

}
