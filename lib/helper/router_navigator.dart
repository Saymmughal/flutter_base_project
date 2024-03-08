import 'package:flutter/material.dart';
import 'package:flutter_base_project/main.dart';

class RouterNavigator {
  // Can pop Route or not
  static bool canGoBack() => Navigator.canPop(navigatorKey.currentContext!);
  // May be pop Route or not
  static Future<bool> maybeGoBack() =>
      Navigator.maybePop(navigatorKey.currentContext!);
  // pop Route
  static void goBack() => Navigator.pop(navigatorKey.currentContext!);
  // Pop Until Route
  static void goBackUntil(routeName) => Navigator.popUntil(
      navigatorKey.currentContext!, ModalRoute.withName(routeName));
  // Push Named Route
  static Future<Object?> goForwardNamed(routeName, {Object? arguments}) =>
      Navigator.pushNamed(navigatorKey.currentContext!, routeName,
          arguments: arguments);
  // Push And Replace Named Route
  static Future<Object?> goForwardReplacementNamed(routeName,
          {Object? arguments}) =>
      Navigator.pushReplacementNamed(navigatorKey.currentContext!, routeName,
          arguments: arguments);
  // Push Named and Remove Until Route
  static Future<Object?> goForwardNamedAndRemoveUntil(routeName) =>
      Navigator.pushNamedAndRemoveUntil(
          navigatorKey.currentContext!, routeName, (route) => false);
  // Pop And Push Named Route
  static Future<Object?> goBackAndForwardNamed(routeName,
          {Object? arguments}) =>
      Navigator.popAndPushNamed(navigatorKey.currentContext!, routeName,
          arguments: arguments);
  // Default Route Name
  static String defaultRouteName() => Navigator.defaultRouteName;
  // Restorable Pop and Push Named Route
  static String restorableGoBackAndForwardNamed(routeName,
          {Object? arguments}) =>
      Navigator.restorablePopAndPushNamed(
          navigatorKey.currentContext!, routeName,
          arguments: arguments);
  // Restorable Push Named Route
  static String restorableForwardNamed(routeName, {Object? arguments}) =>
      Navigator.restorablePushNamed(navigatorKey.currentContext!, routeName,
          arguments: arguments);
  // Restorable Push Named And Remove Until Route
  static String restorableForwardNamedAndRemoveUntil(routeName) =>
      Navigator.restorablePushNamedAndRemoveUntil(
          navigatorKey.currentContext!, routeName, (route) => false);
  // Restorable Push Remplacement Named Route
  static String restorableForwardReplacementNamed(routeName,
          {Object? arguments}) =>
      Navigator.restorablePushReplacementNamed(
          navigatorKey.currentContext!, routeName,
          arguments: arguments);

  // Pop If Can
  static void goBackIfCan({Future<Object?>? elseCondition}) {
    if (canGoBack()) {
      goBack();
    } else {
      elseCondition;
    }
  }
}
