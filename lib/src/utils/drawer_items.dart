import 'package:flutter/material.dart';
import 'package:my_tools/src/Pages/local_image.dart';
import 'package:my_tools/src/Pages/my_gridview.dart';
import 'package:my_tools/src/Pages/my_pageview.dart';
import 'package:my_tools/src/Pages/my_slider.dart';
import 'package:my_tools/src/Pages/my_stack.dart';
import 'package:my_tools/src/Pages/neon_page.dart';
import '../Widgets/my_drawer.dart';

class DrawerItems {
  List<MyItems> item = [
    MyItems(
        title: 'Imagen Local',
        icon: Icons.image_aspect_ratio_outlined,
        subTitle: 'Abrir imagen local',
        route: const LocalImage()),
    MyItems(
        title: 'PageView',
        icon: Icons.pages_outlined,
        subTitle: 'Abrir vista por Paginas',
        route: const MyPageView()),
    MyItems(
        title: 'GridView',
        icon: Icons.grid_4x4_outlined,
        subTitle: 'Abrir cuadro por cuadro',
        route: const MyGridView()),
    MyItems(
        title: 'Slider',
        icon: Icons.screen_lock_landscape_outlined,
        subTitle: 'Abrir slider',
        route: const MySlider()),
    MyItems(
        title: 'Stack',
        icon: Icons.satellite,
        subTitle: 'Abrir widgets en capa',
        route: const MyStack()),
    MyItems(
        title: 'Neon',
        icon: Icons.text_decrease_outlined,
        subTitle: 'Abrir texto neon',
        route: NeonPage())
  ];
}
