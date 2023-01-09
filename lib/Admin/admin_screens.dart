import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:saptaloka_web_revamp/Admin/main_screens/client_admin/client_admin.dart';
import 'package:saptaloka_web_revamp/Admin/main_screens/footer/footer_admin_screens.dart';
import 'package:saptaloka_web_revamp/Admin/main_screens/news_admin/news_admin.dart';
import 'package:saptaloka_web_revamp/Admin/main_screens/portfolio_admin/portfolio_admin.dart';
import 'package:saptaloka_web_revamp/Admin/main_screens/slider_home/slider_home.dart';

class AdminScreens extends StatefulWidget {
  static const routeName = '/AdminSapta';
  static const String id = "admin-screens";

  @override
  State<AdminScreens> createState() => _AdminScreensState();
}

class _AdminScreensState extends State<AdminScreens> {
  Widget _selectedScerrens = SliderHome();
  currentScreens(item) {
    switch (item.route) {
      case SliderHome.id:
        setState(() {
          _selectedScerrens = SliderHome();
        });
        break;
      case ClientAdmin.id:
        setState(() {
          _selectedScerrens = ClientAdmin();
        });
        break;
      case NewsAdmin.id:
        setState(() {
          _selectedScerrens = NewsAdmin();
        });
        break;
      case PortfolioAdmin.id:
        setState(() {
          _selectedScerrens = PortfolioAdmin();
        });
        break;
      case FooterAdminScreens.id:
        setState(() {
          _selectedScerrens = FooterAdminScreens();
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Admin'),
      ),
      sideBar: SideBar(
        items: const [
          AdminMenuItem(
            title: 'Slider Home',
            route: SliderHome.id,
            icon: Icons.slideshow,
          ),
          AdminMenuItem(
            title: 'Client',
            route: ClientAdmin.id,
            icon: Icons.people,
          ),
          AdminMenuItem(
            title: 'News',
            route: NewsAdmin.id,
            icon: Icons.newspaper,
          ),
          AdminMenuItem(
            title: 'Portfolio',
            route: PortfolioAdmin.id,
            icon: Icons.work,
          ),
          AdminMenuItem(
            title: 'Footer',
            route: FooterAdminScreens.id,
            icon: Icons.home,
          ),
        ],
        selectedRoute: AdminScreens.id,
        onSelected: (item) {
          currentScreens(item);
          // if (item.route != null) {
          //   Navigator.of(context).pushNamed(item.route!);
          // }
        },
        // header: Container(
        //   height: 50,
        //   width: double.infinity,
        //   color: const Color(0xff444444),
        //   child: const Center(
        //     child: Text(
        //       'header',
        //       style: TextStyle(
        //         color: Colors.white,
        //       ),
        //     ),
        //   ),
        // ),
        // footer: Container(
        //   height: 50,
        //   width: double.infinity,
        //   color: const Color(0xff444444),
        //   child: const Center(
        //     child: Text(
        //       'footer',
        //       style: TextStyle(
        //         color: Colors.white,
        //       ),
        //     ),
        //   ),
        // ),
      ),
      body: SingleChildScrollView(child: _selectedScerrens),
    );
  }
}
