import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mojatax/screens/tabs/salesTab.dart';
import 'package:mojatax/widgets/tabBar_widget.dart';

import 'tabs/dashboardTab.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    // bool isHandset = (Platform.isIOS || Platform.isAndroid) &&
    //     MediaQuery.of(context).size.width < 700;

    // bool desktop = (Platform.isWindows || Platform.isMacOS);

    bool isDesktop(BuildContext context) =>
        MediaQuery.of(context).size.width >= 700;

    if (isDesktop(context) || Platform.isWindows) {
      return Scaffold(
        appBar: AppBar(
          title: Text("self"),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {},
              ),
            ],
          ),
        ),
      );
    } else {
      return TabBarWidget(
        title: "MOJATAX",
        tabs: const [
          Tab(text: 'Dashboard'),
          Tab(text: 'Sales'),
          Tab(text: 'My Details'),
        ],
        children: [
          const DashboardTab(),
          const SalesTab(),
          Container(),
        ],
      );
    }
  }
}
