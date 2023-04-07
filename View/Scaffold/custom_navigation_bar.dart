import 'package:arzan/ViewModel/Providers/provider_theme.dart';
import 'package:flutter/material.dart';

import '../../ViewModel/size_vm.dart';

class CustomNavigationBar extends StatelessWidget {
  CustomNavigationBar({super.key});

  late BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: MySize.arentir * 0.2,
      child: const NavigationItems(),
    );
  }
}

class NavigationItems extends StatefulWidget {
  const NavigationItems({super.key});

  @override
  State<NavigationItems> createState() => _NavigationItemsState();
}

class _NavigationItemsState extends State<NavigationItems> {
  int _slectedIndex = 3;

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(
        5,
        (index) {
          final icon = DistributorTheme(context).icons.navigation[index];
          return IconButton(
              iconSize: MySize.arentir * 0.07,
              onPressed: () {
                debugPrint("Index:= $index");
                setState(() {
                  _slectedIndex = index;
                });
                if(index==0){Scaffold.of(context).openDrawer();}
              },
              icon: index == _slectedIndex && index > 1
                  ? buildRound(icon)
                  : icon);
        },
      ),
    );
  }

  Widget buildRound(Widget child) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(3),
      decoration: const BoxDecoration(
        color: Color(0xffDBEEE1),
        shape: BoxShape.circle,
      ),
      child: child,
    );
  }
}
