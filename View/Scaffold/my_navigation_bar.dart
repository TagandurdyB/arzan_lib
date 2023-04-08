import 'package:arzan/ViewModel/size_vm.dart';
import 'package:flutter/material.dart';
import '../Widgets/my_container.dart';
import '/Model/constants_model.dart';
import '/ViewModel/Providers/provider_theme.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: DistributorTheme(context).colors.navigationBg,
        currentIndex: _selectIndex,
        // onTap: (index) {
        //   setState(() {
        //     _selectIndex = index;
        //   });
        //   ProcessNavigation(context).screenIndex(index);
        // },
        onTap: (index) {
                debugPrint("Index:= $index");
                setState(() {
                  _selectIndex = index;
                });
                if(index==0){Scaffold.of(context).openDrawer();}
              },
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey[400],
        selectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(
          color: DistributorTheme(context).colors.navigatActiveIcon,
          size: MySize.arentir*0.1,

        ),
        unselectedIconTheme: IconThemeData(
          color: DistributorTheme(context).colors.navigatUnactiveIcon,
        ),
        items: List.generate(
            Worlds().navigation.length,
            (index) => BottomNavigationBarItem(
                activeIcon: MyContainer(
                  shape: MySize.arentir * 0.1,
                  child: DistributorTheme(context).icons.navigation[index],
                ),
                icon: DistributorTheme(context).icons.navigation[index],
                label: DistributorTheme(context).worlds.navigation[index])));
  }
}
