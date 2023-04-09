import 'package:flutter/material.dart';
import 'package:my_tools/src/Widgets/my_drawerhead.dart';
import 'package:my_tools/src/utils/drawer_items.dart';

class MyDrawer extends StatelessWidget {
  final void Function(int) cIndex;
  const MyDrawer({super.key, required this.cIndex});

  @override
  Widget build(BuildContext context) {
    List<MyItems> item = DrawerItems().item;

    return Drawer(
      width: 250.0,
      backgroundColor: Colors.grey[100],
      shape: Border.all(color: Colors.blue, width: 2.0),
      child: ListView(
        children: [
          const MyDrawerHeader(),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: item.length,
              itemBuilder: (context, i) {
                return ListTile(
                    dense: true,
                    horizontalTitleGap: 8.0,
                    minLeadingWidth: 20.0,
                    leading: Icon(item[i].icon),
                    title: Text(item[i].title),
                    subtitle: Text(item[i].subTitle),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20.0,
                    ),
                    onTap: () {
                      cIndex(i);
                      Navigator.pop(context);
                    });
              })
        ],
      ),
    );
  }
}

class MyItems {
  String title;
  IconData icon;
  String subTitle;
  Widget route;

  MyItems(
      {required this.title,
      required this.icon,
      required this.subTitle,
      required this.route});
}
