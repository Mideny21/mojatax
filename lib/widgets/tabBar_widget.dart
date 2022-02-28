import 'package:flutter/material.dart';
import 'package:mojatax/screens/SalesSection/driving_licenses.dart';
import 'package:mojatax/screens/SalesSection/passport.dart';

class TabBarWidget extends StatelessWidget {
  final String title;
  final List<Tab> tabs;
  final List<Widget> children;

  const TabBarWidget({
    Key? key,
    required this.title,
    required this.tabs,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 30,
            actions: [
              PopupMenuButton<String>(
                  icon: const Icon(Icons.more_vert, color: Colors.black),
                  color: Colors.black,
                  onSelected: (value) => onSelected(context, value),
                  itemBuilder: (BuildContext context) {
                    return const [
                      PopupMenuItem(
                          child: Text(
                            "My Account",
                            style: TextStyle(
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold),
                          ),
                          value: ("group")),
                      PopupMenuItem(
                          child: Text(
                            "Sales Rep",
                            style: TextStyle(
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold),
                          ),
                          value: ("sales")),
                      PopupMenuItem(
                          child: Text(
                            "Reports",
                            style: TextStyle(
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold),
                          ),
                          value: ("Whatsapp Web")),
                      PopupMenuItem(
                          child: Text(
                            "Settings",
                            style: TextStyle(
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold),
                          ),
                          value: ("Starred messages")),
                      PopupMenuItem(
                          child: Text(
                            "Returns",
                            style: TextStyle(
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold),
                          ),
                          value: ("Settings")),
                      PopupMenuItem(
                          child: Text(
                            "Logout",
                            style: TextStyle(
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold),
                          ),
                          value: ("Whatsapp Web")),
                    ];
                  })
            ],
            title: Text(
              title,
              style: const TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            flexibleSpace: Container(
              decoration: const BoxDecoration(color: Colors.yellowAccent),
            ),
            bottom: TabBar(
              labelColor: Colors.black,
              // isScrollable: true,
              indicatorColor: Colors.black,
              indicatorWeight: 5,
              tabs: tabs,
            ),
            elevation: 5,
            titleSpacing: 10,
          ),
          body: TabBarView(children: children),
        ),
      );

  void onSelected(BuildContext context, value) {
    switch (value) {
      case "group":
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const Passport()));
        break;
      case "sales":
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const DrivingLicenses()));
        break;
    }
  }
}
