import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_base_project/provider/bottom_navigation_provider.dart';
import 'package:flutter_base_project/utils/colors.dart';
import 'package:flutter_base_project/view/widgets/bottom_navigation.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: whiteStatusBar(),
      child: Consumer<BottomNavigationProvider>(
        builder: (context, controller, child) {
          return Scaffold(
            backgroundColor:
                controller.currentIndex == 1 ? greenPrimary : whitePrimary,
            body: controller.bottomNavigationIndex[controller.currentIndex],
            bottomNavigationBar: const BottomNavigation(currentIndex: 0),
          );
        },
      ),
    );
  }
}
