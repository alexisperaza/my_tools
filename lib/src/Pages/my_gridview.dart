import 'package:flutter/material.dart';
import 'package:my_tools/src/utils/image_list.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> gridList = ImagesList().imagesList;
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 5.0, crossAxisSpacing: 5.0),
        itemCount: gridList.length,
        itemBuilder: (context, i) {
          return Image(fit: BoxFit.cover, image: NetworkImage(gridList[i]));
        });
  }
}
