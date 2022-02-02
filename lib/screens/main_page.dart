import 'package:flutter/material.dart';
import 'package:mojatax/screens/home_page.dart';
import 'package:mojatax/widgets/tabBar_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return TabBarWidget(
      title: "MOJATAX",
      tabs: const [
        Tab(
          text: 'Dashboard',
        ),
        Tab(text: 'Sales'),
        Tab(text: 'My Details'),
      ],
      children: [
        const HomePage(),
        Container(),
        Container(),
      ],
    );
  }
}
