import 'package:flutter/material.dart';

import '../../app/router.dart';

class SplashViewModel extends ChangeNotifier {
  final BuildContext _context;
  SplashViewModel(this._context);

  Future<void> init() async {
    if (await userIsLogged()) {
      await goToMainScreen();
    }
  }

  void disposeData() {}

  Future<bool> userIsLogged() async {
    await Future.delayed(const Duration(seconds: 3));
    return true;
  }

  Future<void> goToMainScreen() async {
    await Navigator.of(_context).popAndPushNamed(Routes.main);
  }
}
