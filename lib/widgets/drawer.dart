import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';

import '../router_const.dart';

class MenuDraw extends StatelessWidget {
  const MenuDraw({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              text: 'Home',
              onTap: () {
                context.go('/');
              }),
          _drawerItem(
              text: 'About Us',
              onTap: () {
                context.go(aboutUsRoute);
              }),
          _drawerItem(
              text: 'Solutions',
              onTap: () {
                context.go(solutionsRoute);
              }),
          _drawerItem(text: 'News', onTap: () {}),
          _drawerItem(
              text: 'Contact',
              onTap: () {
                context.go(contactUsRoute);
              }),
          Divider(height: 25, thickness: 1),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text('\u24B8 Saptaloka Digital 2022'),
          )
        ],
      ),
    );
  }

  Widget _drawerHeader() {
    return UserAccountsDrawerHeader(
      accountName: Text('SAPTALOKA DIGITAL'),
      accountEmail: Text('IT & Business Consultant'),
    );
  }

  Widget _drawerItem({String? text, GestureTapCallback? onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              text!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
