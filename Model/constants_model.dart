import '../ViewModel/size_vm.dart';

class Worlds {
  static const String avtor = "Tagandurdy Baýramdurdyýew Mekanowiç";

  static const String mainTitle = "Main Title";

  final String naviHome = "Home";
  final String naviExplore = "Explore";
  final String naviAdd = "Add";
  final String naviSubscriptions = "Subscriptions";
  final String naviLibrary = "Library";
  List<String> get navigation =>
      [naviHome, naviExplore, naviAdd, naviSubscriptions, naviLibrary];
}

class Nums {
  static double avtor = MySize.arentir * 0.05;
  double appBar = MySize.arentir * 0.06;
  static double input = MySize.arentir * 0.04;
  static double site = MySize.arentir * 0.07;
  static double siteSub = MySize.arentir * 0.027;
    static double navbarIconSize = MySize.arentir * 0.07;
}
