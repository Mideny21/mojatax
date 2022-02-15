import 'package:flutter/material.dart';

class RestrationTab extends StatelessWidget {
  final List<Tab> tabs;
  final List<Widget> children;

  const RestrationTab({
    Key? key,
    required this.tabs,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 10,
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
          ),
          body: TabBarView(children: children),
        ),
      );
}
