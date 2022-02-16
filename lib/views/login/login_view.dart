import 'package:flutter/material.dart';
import 'package:fsc_ibb/core/locator.dart';
import 'package:fsc_ibb/core/router_constants.dart';
import 'package:fsc_ibb/services/cache_image_service/cahce_image_service.dart';
import 'package:fsc_ibb/widgets/common/divider/or_divider.dart';
import 'package:fsc_ibb/widgets/common/style/common_gradient.dart';
import 'package:fsc_ibb/widgets/textfield/transparent_textfield_widget.dart';
import 'package:fsc_ibb/widgets/utils/gradient_masker.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'login_view_model.dart';

part 'widgets/parts/button/login_button.dart';
part 'widgets/parts/button/register_button.dart';
part 'widgets/parts/form_topic.dart';
part 'widgets/parts/live_background.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      builder: (BuildContext context, LoginViewModel viewModel, Widget _) {
        return Scaffold(
          body: Stack(
            fit: StackFit.expand,
            children: const [
              _LiveBackGround(),
              _LoginForm(),
            ],
          ),
        );
      },
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(.5),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          _FormTopic(),
          SizedBox(height: 45),
          TransparentTextFieldWidget(hint: 'Username'),
          SizedBox(height: 25),
          TransparentTextFieldWidget(hint: 'Password'),
          SizedBox(height: 50),
          _LoginButton(),
          SizedBox(height: 25),
          OrDivider(),
          SizedBox(height: 25),
          _RegisterButton(),
        ],
      ),
    );
  }
}
