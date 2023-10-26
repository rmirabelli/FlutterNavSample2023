import 'package:flutter/material.dart';

class ShopDetailScreen extends StatelessWidget {
  const ShopDetailScreen(this._detailInfo, {super.key});

  final String _detailInfo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_detailInfo)),
      body: Column(
        children: [
          Hero(
            tag: 'circle_hero_$_detailInfo',
            child: Container(
                height: 300,
                width: 300,
                decoration: ShapeDecoration(
                  shape: CircleBorder(),
                  color: Colors.green,
                )),
          ),
          Hero(
            tag: 'title_hero_$_detailInfo',
            child: Text(_detailInfo),
          ),
        ],
      ),
    );
  }
}
