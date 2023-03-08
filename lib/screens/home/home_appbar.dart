import 'package:flutter/material.dart';
import 'package:enjoy_smart/image_loader.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  Widget _iconTextWidget(String icon, String title) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: ImageLoader.imageAsset(icon),
        ),
        Text(title, style: const TextStyle(color: Colors.blueAccent),)
      ]
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: _iconTextWidget('home/dingwei.png', '南京市')
          ),
          const SizedBox(width: 20),
          Expanded(child: ImageLoader.imageAsset('home/logo.png')),
          const SizedBox(width: 20),
          _iconTextWidget('home/xiaoxi.png', '消息'),
          _iconTextWidget('home/kefu.png', '客服'),
        ],
      ),
    );
  }
}
