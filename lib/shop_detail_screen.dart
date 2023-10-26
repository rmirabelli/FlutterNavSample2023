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
            tag: 'tag_avatar_$_detailInfo',
            child: Container(
              height: 300,
              width: 300,
              decoration: ShapeDecoration(
                color: Colors.yellow,
                shape: CircleBorder(),
              ),
            ),
          ),
          Text(_detailInfo),
        ],
      ),
    );
  }
}
