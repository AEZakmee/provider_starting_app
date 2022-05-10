import 'package:flutter/material.dart';

import '../../app/router.dart';

class SplashViewModel extends ChangeNotifier {
  SplashViewModel();

  Future<void> init(BuildContext context) async {
    if (await userIsLogged()) {
      await goToMainScreen(context);
    }
  }

  void disposeData() {}

  Future<bool> userIsLogged() async {
    await Future.delayed(const Duration(seconds: 3));
    return true;
  }

  Future<void> goToMainScreen(BuildContext context) async {
    await Navigator.of(context).popAndPushNamed(Routes.primary);
  }
}
