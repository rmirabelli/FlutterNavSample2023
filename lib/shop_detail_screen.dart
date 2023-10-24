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
          Text(_detailInfo),
        ],
      ),
    );
  }
}
