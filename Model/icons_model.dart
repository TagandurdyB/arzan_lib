// ignore_for_file: overridden_fields

import 'package:flutter/material.dart';
import '/Model/colors_model.dart';
import '/Model/icon_data_model.dart';
import 'constants_model.dart';

class ThemeIcon {
  final LightIconD? themeIcon;
  final ThemeColor? themeColor;
  ThemeIcon({this.themeIcon, this.themeColor});
  Icon get changeMod => Icon(themeIcon!.changeMod, color: themeColor!.text);

  // Icon get homeU => const Icon(Icons.home);
  // Icon get homeS => const Icon(Icons.home_rounded);

  // Icon get exploreU => const Icon(Icons.explore_outlined);
  // Icon get exploreS => const Icon(Icons.explore);

  // Icon get addU => const Icon(Icons.add_circle_outline);
  // Icon get addS => const Icon(Icons.add_circle);

  // Icon get subscriptionsU => const Icon(Icons.subscriptions_outlined);
  // Icon get subscriptionsS => const Icon(Icons.subscriptions);

  // Icon get libraryU => const Icon(Icons.video_library_outlined);
  // Icon get libraryS => const Icon(Icons.video_library);

  // List<Icon> get navigationU =>
  //     [homeU, exploreU, addU, subscriptionsU, libraryU];

  // List<Icon> get navigationS =>
  //     [homeS, exploreS, addS, subscriptionsS, libraryS];

  Icon get menu => Icon(themeIcon!.menu, size: Nums.navbarIconSize);

  Icon get location =>  Icon(Icons.location_on_outlined,size: Nums.navbarIconSize);

  Icon get addU =>  Icon(Icons.add_box_outlined,size: Nums.navbarIconSize);

  Icon get home =>  Icon(Icons.home_filled,size: Nums.navbarIconSize);

  Icon get user =>  Icon(Icons.assignment_ind_outlined,size: Nums.navbarIconSize);

  List<Icon> get navigation =>
      [menu, location, addU, home, user];
}
