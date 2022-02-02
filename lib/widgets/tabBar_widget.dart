import 'package:flutter/material.dart';

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
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  ))
            ],
            title: Text(
              title,
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            flexibleSpace: Container(
              decoration: const BoxDecoration(color: Colors.yellowAccent),
            ),
            bottom: TabBar(
              labelColor: Colors.black,
              isScrollable: true,
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
}
