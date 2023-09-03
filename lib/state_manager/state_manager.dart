import 'package:state_manager/state_manager/i_state_manager.dart';

class StateManager implements IStateManager {
  @override
  List<Function> listeners = <Function>[];

  @override
  void addListener(Function listener) {
    if (!hasListener(listener)) {
      listeners.add(listener);
    }
  }

  @override
  void removeListener(Function listener) {
    if (hasListener(listener)) {
      listeners.remove(listener);
    }
  }

  @override
  bool hasListener(Function listener) {
    return listeners.contains(listener);
  }

  @override
  void notifyListers() {
    listeners.toSet().forEach((element) {
      element();
    });
  }
}
