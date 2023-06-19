import 'package:new_project/Main/notifier/main_page.notifier.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [

  ChangeNotifierProvider<MainPageNotifier>(create: (context) => MainPageNotifier()),

];
