import 'package:state_manager/state_manager/state_manager.dart';

class HomeStateManager extends StateManager {
  int count = 0;

  void inc() {
    count++;
    notifyListers();
  }

  void dec() {
    count--;
    notifyListers();
  }
}
