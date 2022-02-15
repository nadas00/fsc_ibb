import 'package:flutter/material.dart';
import 'package:fsc_ibb/core/locator.dart';
import 'package:fsc_ibb/core/router_constants.dart';
import 'package:fsc_ibb/main.dart';
import 'package:fsc_ibb/services/cache_image_service/cahce_image_service.dart';
import 'package:fsc_ibb/widgets/common/style/common_gradient.dart';
import 'package:fsc_ibb/widgets/utils/gradient_masker.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'login_view_model.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      builder: (BuildContext context, LoginViewModel viewModel, Widget _) {
        return Scaffold(
          body: Stack(
            fit: StackFit.expand,
            children: [
              Image(
                image: CacheImageService.instance.loginBackgroundImage,
                fit: BoxFit.fill,
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.5),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Movie App", style: Theme.of(context).textTheme.headline4.copyWith(fontWeight: FontWeight.bold, color: Colors.white)),
                    const SizedBox(height: 45),
                    const TransparentTextFieldWidget(
                      hint: 'Username',
                    ),
                    const SizedBox(height: 25),
                    const TransparentTextFieldWidget(
                      hint: 'Password',
                    ),
                    const SizedBox(height: 50),
                    GestureDetector(
                      onTap: () => locator<NavigationService>().clearStackAndShow(homeViewRoute),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: MediaQuery.of(context).size.width * .8,
                        child: GradientMasker(
                          active: true,
                          child: Text(
                            "Login",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 25),
                        Flexible(child: Divider(thickness: 2, color: Colors.white)),
                        SizedBox(width: 25),
                        Text(
                          "OR",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        SizedBox(width: 25),
                        Flexible(child: Divider(thickness: 2, color: Colors.white)),
                        SizedBox(width: 25),
                      ],
                    ),
                    SizedBox(height: 25),
                    GestureDetector(
                      onTap: () => locator<NavigationService>().clearStackAndShow(homeViewRoute),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: MediaQuery.of(context).size.width * .8,
                        child: GradientMasker(
                          active: false,
                          child: Text(
                            "Register",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), gradient: commonGradient),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}

class TransparentTextFieldWidget extends StatelessWidget {
  final String hint;
  const TransparentTextFieldWidget({
    Key key,
    @required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .8,
      child: TextField(
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
            focusedBorder: new OutlineInputBorder(
              borderRadius: new BorderRadius.circular(25.0),
              borderSide: BorderSide(color: Colors.deepOrangeAccent),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            filled: true,
            hintStyle: TextStyle(color: Colors.grey[800]),
            hintText: hint,
            fillColor: Colors.white70),
      ),
    );
  }
}
