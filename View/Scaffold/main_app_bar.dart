import 'package:arzan/View/Widgets/my_container.dart';
import 'package:flutter/material.dart';

class MainAppbar extends StatefulWidget {
  const MainAppbar({super.key});

  @override
  State<MainAppbar> createState() => _MainAppbarState();
}

class _MainAppbarState extends State<MainAppbar> {
  @override
  Widget build(BuildContext context) {
    return MyContainer(
      width: double.infinity,
      height: kToolbarHeight + MediaQuery.of(context).padding.top,
    );
  }
}
