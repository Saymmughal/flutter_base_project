import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_base_project/utils/style.dart';
import 'package:provider/provider.dart';
import 'package:flutter_base_project/helper/provider_helper.dart';
import 'package:flutter_base_project/helper/routes_helper.dart';
import 'package:flutter_base_project/helper/scroll_behaviour.dart';
import 'package:flutter_base_project/utils/colors.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // For Firebase Initialization
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  // FirebaseMessaging.instance.getToken().then((value) {
  //   debugPrint("Token =======================>>>>>>>>>>> : $value");
  // });
  // FirebaseMessaging.instance.requestPermission();
  // To initialize Push notifications
  // await NotificationService().initialize();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: ProviderHelper.providers,
      child: MaterialApp(
          navigatorKey: navigatorKey,
          builder: (context, child) {
            return ScrollConfiguration(
              behavior: MyBehavior(),
              child: MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
                child: child!,
              ),
            );
          },
          debugShowCheckedModeBanner: false,
          title: 'Base Project',
          theme: ThemeData(
            useMaterial3: false,
            fontFamily: poppins,
            primarySwatch: const MaterialColor(0x306A99, primaryColor),
            pageTransitionsTheme: const PageTransitionsTheme(builders: {
              TargetPlatform.android: CupertinoPageTransitionsBuilder(),
              TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            }),
          ),
          initialRoute: RouterHelper.initial,
          routes: RouterHelper.routes),
    );
  }
}
