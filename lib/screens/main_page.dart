import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mojatax/screens/tabs/salesTab.dart';
import 'package:mojatax/widgets/tabBar_widget.dart';

import 'desktop_sales.dart/my_details.dart';
import 'desktop_sales.dart/sales_desktop.dart';
import 'desktop_sales.dart/sales_report.dart';
import 'tabs/dashboardTab.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  bool showNavigationBar = false;

  var list = [
    const DashboardTab(),
    const SalesTab(),
  ];

  var title = ["Dashboard", 'Sales', 'My Details'];

  @override
  Widget build(BuildContext context) {
    bool isDesktop(BuildContext context) =>
        MediaQuery.of(context).size.width >= 700;

    /* START OF DESKTOP VERSION */
    return isDesktop(context)
        ? Scaffold(
            appBar: AppBar(
              title: Text(
                title[_selectedIndex],
                style: const TextStyle(color: Colors.black),
              ),
              centerTitle: true,
              flexibleSpace: Container(
                decoration: const BoxDecoration(color: Colors.yellowAccent),
              ),
              elevation: 2,

              // leading: IconButton(
              //     icon: Icon(
              //       Icons.menu,
              //       color: Colors.black,
              //     ),
              //     onPressed: () {
              //       setState(() {
              //         showNavigationBar = !showNavigationBar;
              //       });
              //     }),
            ),
            body: Row(
              children: <Widget>[
                //list[_selectedIndex],
                NavigationRail(
                  extended: true,
                  selectedIndex: _selectedIndex,
                  elevation: 10,
                  backgroundColor: Colors.yellowAccent,
                  selectedIconTheme:
                      IconThemeData(color: Colors.black, size: 50),
                  unselectedIconTheme: IconThemeData(
                      color: Colors.black.withOpacity(0.8), size: 50),
                  selectedLabelTextStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  unselectedLabelTextStyle: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.normal),
                  onDestinationSelected: (int index) {
                    setState(() {
                      _selectedIndex = index;
                      // showNavigationBar = !showNavigationBar;
                    });
                  },
                  // labelType: NavigationRailLabelType.none,
                  destinations: [
                    NavigationRailDestination(
                        icon: Icon(Icons.home),
                        selectedIcon: Icon(Icons.home),
                        label: Text('DASHBOARD',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    NavigationRailDestination(
                      icon: Icon(Icons.money),
                      selectedIcon: Icon(Icons.money),
                      label: Text('SALES'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.person_pin_rounded),
                      selectedIcon: Icon(Icons.person_pin_rounded),
                      label: Text('MY DETAILS'),
                    ),
                  ],
                ),
                Expanded(
                  child: switchPages()!,
                )
              ],
            ),
          )

        /* END OF DESKTOP VERSION */

        : TabBarWidget(
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

  Widget? switchPages() {
    switch (_selectedIndex) {
      case 0:
        return DashboardTab();
      case 1:
        return SalesTab();
      case 2:
        return DesktopDetails();
    }
  }
}
