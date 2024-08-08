import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

drawer(){
  return GFDrawer(
    color: GFColors.DARK,
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        ListTile(
          title: Text('Item 1'),
          onTap: null,
        ),
        ListTile(
          title: Text('Item 2'),
          onTap: null,
        ),
      ],
    ),
  );
}