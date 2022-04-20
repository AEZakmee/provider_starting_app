import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../widgets/viewmodel_builder.dart';
import 'main_viewmodel.dart';
import 'widgets/app_bar.dart';
import 'widgets/body.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ViewModelBuilder<MainViewModel>(
        viewModelBuilder: MainViewModel.new,
        onModelReady: (viewModel) => viewModel.init(),
        builder: (context, viewModel) => const Scaffold(
          body: Body(),
          appBar: MainAppBar(),
        ),
      );
}
