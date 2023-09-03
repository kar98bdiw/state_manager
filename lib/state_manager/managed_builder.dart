import 'package:flutter/widgets.dart';
import 'package:state_manager/state_manager/state_manager.dart';

class ManagedBuilder extends StatefulWidget {
  final StateManager stateManager;
  final Widget Function(BuildContext ctx) builder;
  const ManagedBuilder({
    super.key,
    required this.stateManager,
    required this.builder,
  });

  @override
  State<ManagedBuilder> createState() => _ManagedBuilderState();
}

class _ManagedBuilderState extends State<ManagedBuilder> {
  @override
  void initState() {
    widget.stateManager.addListener(uiUpdater);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context);
  }

  void uiUpdater() {
    setState(() {});
  }

  @override
  void dispose() {
    widget.stateManager.removeListener(uiUpdater);
    super.dispose();
  }
}
