import 'package:flutter/material.dart';

class MyPageView extends StatelessWidget {
  const MyPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: const [
        Image(
            fit: BoxFit.fitHeight,
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2017/08/09/11/11/hot-2614220_960_720.jpg')),
        Image(
            fit: BoxFit.fitHeight,
            image: NetworkImage(
              'https://cdn.pixabay.com/photo/2018/05/20/04/55/hot-air-ballon-3415006_960_720.jpg',
            )),
      ],
    );
  }
}
