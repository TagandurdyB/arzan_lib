import 'provider_navigation.dart';

import 'provider_app_bar.dart';
import '/ViewModel/Providers/provider_theme.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class MyProvoders {
  static List<SingleChildWidget> get list => [
    ChangeNotifierProvider<ProviderTheme>(
      create:(context)=> ProviderTheme(),
    ),
    ChangeNotifierProvider<ProviderAppBar>(
      create:(context)=> ProviderAppBar(),
    ),
    ChangeNotifierProvider<ProviderNavigation>(
      create:(context)=> ProviderNavigation(),
    ),
  ];
}
