import 'package:flutter/material.dart';
import 'package:state_manager/state_manager/state_manager.dart';

abstract class ManagedState<T extends StatefulWidget, S extends StateManager>
    extends State<T> {
  abstract StateManager stateManager;

  S get manager => stateManager as S;

  void uiUpdater() {
    setState(() {});
  }

  @override
  void initState() {
    stateManager.addListener(uiUpdater);
    super.initState();
  }

  @override
  void dispose() {
    stateManager.removeListener(uiUpdater);
    super.dispose();
  }
}
