import 'package:flutter/material.dart';
import 'carpentry_screen.dart';
import 'hvac_screen.dart';
import 'plumbing_screen.dart';

class DIYScreen extends StatelessWidget {
  const DIYScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Column(
            children: [
              TabBar(tabs: [
                Tab(text: 'Carpentry'),
                Tab(text: 'HVAC'),
                Tab(text: 'Plumbing'),
              ]),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CarpentryScreen(),
            HVACScreen(),
            PlumbingScreen(),
          ],
        ),
      ),
    );
  }
}
