import 'package:flutter/material.dart';
import 'package:my_tools/src/Pages/local_image.dart';
import 'package:my_tools/src/Pages/my_gridview.dart';
import 'package:my_tools/src/Pages/my_pageview.dart';
import 'package:my_tools/src/Widgets/my_drawer.dart';
import 'package:my_tools/src/utils/drawer_items.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final List<MyItems> myBody = DrawerItems().item;
    return Scaffold(
      appBar: AppBar(
        title: Text(myBody[index].title),
        elevation: 0.0,
      ),
      drawer: MyDrawer(
        cIndex: (i) {
          setState(() {
            index = i;
          });
        },
      ),
      body: myBody[index].route,
    );
  }
}
