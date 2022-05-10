import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../main_viewmodel.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<PrimaryViewModel>();

    return NavigationView(
      content: NavigationBody(
        index: viewModel.index,
        children: const [
          ScaffoldPage(
            content: Text('Kur1'),
          ),
          ScaffoldPage(
            content: Text('Kur2'),
          ),
          ScaffoldPage(
            content: Text('Kur3'),
          ),
        ],
      ),
      pane: NavigationPane(
        selected: viewModel.index,
        onChanged: (i) => context.read<PrimaryViewModel>().updateIndex(i),
        displayMode: PaneDisplayMode.compact,
        items: [
          PaneItem(
            icon: const Icon(FluentIcons.more),
            title: const Text('Kur1'),
          ),
          PaneItem(
            icon: const Icon(FluentIcons.user_clapper),
            title: const Text('Kur2'),
          ),
          PaneItem(
            icon: const Icon(FluentIcons.chat),
            title: const Text('Kur3'),
          ),
        ],
      ),
    );
  }
}