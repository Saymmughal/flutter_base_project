import 'package:flutter/material.dart';
import 'package:flutter_base_project/helper/router_navigator.dart';
import 'package:flutter_base_project/view/widgets/loading_dialog.dart';

class AuthProvider extends ChangeNotifier {
  // Login controller
  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();

  // Variables
  bool? isLoading;

  // Clear TextFields
  clearFields() {
    loginEmailController.clear();
    loginPasswordController.clear();
    notifyListeners();
  }

  // Clear Authentication Screen
  clearAuthenticationScreen() {
    clearFields();
    notifyListeners();
  }

  // Set Loading
  setLoading( bool value) {
    isLoading = value;
    if (value == true) {
      loaderDialog();
    } else {
      goBack();
    }
    notifyListeners();
  }
/*=================================================================================
  APIs calling
 ==================================================================================*/

  // Registeration ===================================================
}
