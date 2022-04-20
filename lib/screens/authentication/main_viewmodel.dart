import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../providers/theme_provider.dart';

class MainViewModel extends ChangeNotifier {
  final BuildContext _context;
  MainViewModel(this._context);

  bool loading = true;

  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 3));
    loading = false;
    notifyListeners();
  }

  void toggleTheme() => _context.read<ThemeProvider>().switchTheme();
}
