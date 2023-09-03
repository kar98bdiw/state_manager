import 'package:flutter/material.dart';
import 'package:state_manager/state_manager/managed_state.dart';
import 'package:state_manager/state_manager/state_manager.dart';
import 'package:state_manager/state_managers/home_state_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ManagedState<HomePage, HomeStateManager> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(manager.count.toString()),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  manager.dec();
                },
                child: Text(
                  'dec',
                ),
              ),
              TextButton(
                onPressed: () {
                  manager.inc();
                },
                child: Text(
                  'inc',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  StateManager stateManager = HomeStateManager();
}
