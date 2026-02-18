import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:traxit/app_bar/app_bar.dart';
import 'package:traxit/configs/configs.dart';
import 'package:traxit/router/routes.dart';
import 'package:traxit/screens/widget/textfields/app_textfield/app_textfield.dart';
// import 'package:traxit_app/configs/configs.dart';
// import 'package:traxit_app/router/routes.dart';
// import 'package:traxit_app/widgets/core/headers/app_header.dart';
// import 'package:traxit_app/widgets/design/buttons/app_button/app_button.dart';
// import 'package:traxit_app/widgets/design/checkboxes/app_checkbox/app_checkbox.dart';
// import 'package:traxit_app/widgets/design/textfields/app_textfield/app_textfield.dart';
// import 'package:traxit_app/widgets/logo_container.dart';

part 'widgets/_body.dart';
part '_state.dart';
part 'static/_form_data.dart';
part 'static/_form_keys.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    App.init(context);

    return ChangeNotifierProvider<_ScreenState>(
      create: (_) => _ScreenState(),
      child: const _Body(),
    );
  }
}
