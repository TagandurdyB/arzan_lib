import '/ViewModel/size_vm.dart';
import 'package:flutter/material.dart';


class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double arentir = MySize.arentir;
    return Container(color: Colors.red,
    child: IconButton(
      onPressed: (){},
      icon: const Icon(Icons.home)),);
  }


}
