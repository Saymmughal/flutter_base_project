import 'package:flutter_base_project/data/model/connection_model/connection_model.dart';
import 'package:flutter_base_project/helper/router_navigator.dart';
import 'package:flutter_base_project/helper/routes_helper.dart';
import 'package:flutter_base_project/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_base_project/view/widgets/extention/string_extension.dart';
import 'package:flutter_base_project/view/widgets/extention/widget_extension.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    callingAPIs();
    super.initState();
  }

  callingAPIs() {
    // Call APIs
  }
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: whiteStatusBar(),
      child: Scaffold(
          body: Container(
        child: 'Home Screen'.to12W600Text().onPress(
              () => goToNamed(RouterHelper.noConnectionScreen,
                  arguments: ConnectionModel(
                      currentScreen: RouterHelper.mainScreen,
                      message: 'NO Connection')),
            ),
      ).center),
    );
  }
}
