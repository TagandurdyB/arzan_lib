// ignore_for_file: must_be_immutable

import 'package:arzan/View/Widgets/ReadyInput/ready_input.dart';
import 'package:arzan/ViewModel/Providers/provider_theme.dart';
import 'package:arzan/ViewModel/size_vm.dart';
import 'package:flutter/material.dart';

import '../../ViewModel/tags_vm.dart';
import '../Widgets/my_container.dart';

class CustomAppBar extends StatelessWidget {
  final double? appHeight;
   CustomAppBar({this.appHeight, super.key});

late BuildContext context ;

  @override
  Widget build(BuildContext context) {
    this.context=context;
    return Container(
      color: Colors.red,
      child: Stack(
          alignment: Alignment.center, children: [buildTable, buildContent()]),
    );
  }

  Widget get buildTable =>
      AppBar(leading: const SizedBox(), toolbarHeight: appHeight);

  Widget buildContent() {
    return SafeArea(
      child: Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.all(8),
          padding: EdgeInsets.symmetric(horizontal: MySize.arentir * 0.02),
          //color: Colors.blue,
          child: Row(
            children: [
              SizedBox(width: MySize.arentir * 0.78, child: buildSearchBar()),
              buildNoti(),
            ],
          )),
    );
  }

  Widget buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ReadyInput(
        tag: Tags.rISearch,
        shape: true,
        borderRad: MySize.arentir * 0.02,
      ),
    );
  }

  Widget buildNoti() {
    return MyContainer(
        width: MySize.arentir * 0.1,
        height: MySize.arentir * 0.1,
        borderColor: Colors.transparent,
        color: Colors.transparent,
        onTap: () {
          debugPrint("salam");
        },
        child: Icon(
          Icons.notifications_none,
          size: MySize.arentir * 0.1,
          color: DistributorTheme(context).colors.text,
        ));
  }
}
