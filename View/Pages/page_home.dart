import 'package:arzan/View/Scaffold/my_drawer.dart';
import 'package:arzan/ViewModel/Providers/provider_theme.dart';
import 'package:arzan/ViewModel/size_vm.dart';

import '../../ViewModel/orientation_vm.dart';
import '../Scaffold/custom_app_bar.dart';
import '../Scaffold/custom_navigation_bar.dart';
import '../Screens/home_screens.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    MyOrientation.systemNavigationBarMode(DistributorTheme(context).isLight);
    final double appHeight =MySize.arentir*0.2;
    return Scaffold(
        drawer: MyDrawer(),
        // enableAppBar: false,
        // appBarLeading: null,
        // bottomBar: false,
        // bottomNavigationBar: const MyBottomNavigationBar(),
       /* appBar: PreferredSize(
            preferredSize: Size.fromHeight(appHeight),
            child: MainAppbar(height: appHeight)),*/
            appBar: PreferredSize(preferredSize: Size.fromHeight(appHeight),
            child: CustomAppBar(appHeight: appHeight)),
        bottomNavigationBar: CustomNavigationBar(),
        body: Column(
          children: [
            // const MainAppbar(),
            Expanded(child: HomeScreens()),
            // CustomNavigationBar(),
          ],
        ));
  }
}
