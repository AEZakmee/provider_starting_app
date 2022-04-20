import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main_viewmodel.dart';

// ignore: prefer_mixin
class MainAppBar extends StatelessWidget with PreferredSizeWidget {
  const MainAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MainViewModel>();
    return AppBar(
      actions: [
        IconButton(
          onPressed: viewModel.toggleTheme,
          icon: const Icon(Icons.adjust),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
