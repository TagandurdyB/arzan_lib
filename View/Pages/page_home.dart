import 'package:arzan/View/Scaffold/my_drawer.dart';

import '../Scaffold/custom_navigation_bar.dart';
import '../Scaffold/main_app_bar.dart';
import '../Screens/home_screens.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
     // enableAppBar: false,
     // appBarLeading: null,
     // bottomBar: false,
      body: Column(
        children: [
           const MainAppbar(),
          Expanded(child: HomeScreens()),
           CustomNavigationBar(),
        ],
      )
    );
  }
}
