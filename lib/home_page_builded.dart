import 'package:flutter/material.dart';
import 'package:state_manager/state_manager/managed_builder.dart';
import 'package:state_manager/state_managers/home_state_manager.dart';

class HomePageBuilded extends StatefulWidget {
  const HomePageBuilded({super.key});

  @override
  State<HomePageBuilded> createState() => _HomePageBuildedState();
}

class _HomePageBuildedState extends State<HomePageBuilded> {
  final HomeStateManager manager = HomeStateManager();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ManagedBuilder(
              stateManager: manager,
              builder: (_) {
                return Text(manager.count.toString());
              }),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  manager.dec();
                },
                child: Text(
                  'ddd',
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
}
