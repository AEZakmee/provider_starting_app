import 'package:fluent_ui/fluent_ui.dart';

import '../../../utilitiies/colors.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        color: ColorGetter().primaryColor,
      );
}
