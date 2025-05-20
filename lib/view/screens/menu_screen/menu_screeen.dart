import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_base_project/utils/colors.dart';
import 'package:flutter_base_project/view/widgets/extention/string_extension.dart';
import 'package:flutter_base_project/view/widgets/extention/widget_extension.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: whiteStatusBar(),
      child: Scaffold(
          backgroundColor: greenPrimary,
          body: Container(
            child: 'Menu Screen'.to12W600Text(),
          ).center),
    );
  }
}
