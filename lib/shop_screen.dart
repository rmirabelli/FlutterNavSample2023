import 'package:flutter/material.dart';
import 'package:naviation_sample/shop_detail_screen.dart';
import 'shop_list_tile.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  void _goToScreen(BuildContext context, String detailInfo) {
    Navigator.of(context).push(MaterialPageRoute(builder: (buildContext) {
      return ShopDetailScreen(detailInfo);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop For Stuff'),
      ),
      body: ListView(
        children: [
          ShopListTile('Hammer', () {
            _goToScreen(context, 'Hammer');
          }),
          ShopListTile('Nails', () {
            _goToScreen(context, 'Nails');
          }),
          ShopListTile('Screws', () {
            _goToScreen(context, 'Screws');
          }),
          ShopListTile('Paint', () {
            _goToScreen(context, 'Paint');
          }),
          ShopListTile('Brush', () {
            _goToScreen(context, 'Brush');
          }),
        ],
      ),
    );
  }
}
