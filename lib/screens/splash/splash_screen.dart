import 'package:flutter/material.dart';

import '../../widgets/viewmodel_builder.dart';
import 'splash_viewmodel.dart';
import 'widgets/body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  ///This viewModelBuilder is different than the Stacked one.
  ///The stacked builder generates consumer
  ///Which means that the whole tree under the generator
  ///is rebuild on notifyListeners
  ///This builder only creates a provider and calls a function like init
  ///It does not rebuild the whole screen.
  ///It works like a normal provider underneath
  @override
  Widget build(BuildContext context) => ViewModelBuilder<SplashViewModel>(
        viewModelBuilder: SplashViewModel.new,
        onModelReady: (viewModel) => viewModel.init(),
        onDispose: (viewModel) => viewModel.disposeData(),

        ///we can have some kind of baseViewModel in which we can have an init and dispose method
        ///and the viewModelBuilder to accept an object which extends the baseViewModel
        builder: (context, viewModel) => const Scaffold(
          body: Body(),
          //appBar: null,
          //bottomNavigationBar: null,
        ),
      );
}
