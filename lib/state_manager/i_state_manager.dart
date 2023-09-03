abstract class IStateManager {
  abstract List<Function> listeners;
  void addListener(Function listener);
  void removeListener(Function listener);
  bool hasListener(Function listener);
  void notifyListers();
}
