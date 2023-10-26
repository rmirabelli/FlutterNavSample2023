import 'package:flutter/material.dart';

class ShopListTile extends StatelessWidget {
  const ShopListTile(this._title, this._onTap, {super.key});
  final String _title;
  final Function() _onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Hero(
        tag: 'circle_hero_$_title',
        child: CircleAvatar(
          backgroundColor: Colors.green,
        ),
      ),
      title: Hero(
        tag: 'title_hero_$_title',
        child: Text(_title),
      ),
      onTap: _onTap,
    );
  }
}
