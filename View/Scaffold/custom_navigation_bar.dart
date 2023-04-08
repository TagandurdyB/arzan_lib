// ignore_for_file: must_be_immutable

import 'package:arzan/ViewModel/Providers/provider_theme.dart';
import 'package:flutter/material.dart';

import '../../ViewModel/Providers/provider_navigation.dart';
import '../../ViewModel/size_vm.dart';
import '../Widgets/my_container.dart';

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
      color: DistributorTheme(context).colors.navigationBg,
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
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        5,
        (index) {
          final icon = DistributorTheme(context).icons.navigation[index];
          final bool isSelect =
              ProcessNavigation(context).screenIndex == index && index > 1;
          return InkWell(
            
            child: MyContainer(
              onTap: () {
              debugPrint("Index:= $index");
              setState(() {
                _slectedIndex = index;
              });
              ProcessNavigation(context).changeIndex(index);
              if (index == 0) Scaffold.of(context).openDrawer();
            }, color: isSelect
                      ? DistributorTheme(context).colors.navigatSelectRound
                      : Colors.transparent,
                alignment: Alignment.center,
                width: MySize.arentir * 0.11,
                height: MySize.arentir * 0.11,
                shape: MySize.arentir * 0.1,
                borderColor: Colors.transparent,
                child: Theme(
                    data: ThemeData(
                        iconTheme: IconThemeData(
                      color: isSelect
                          ? const Color(0xff267B39)
                          : const Color(0xff6E7F8C),
                    )),
                    child: icon)),
          );
        },
      ),
    );
  }
}
