import 'package:complexe_ui/creative_widgets/bottom_text.dart';
import 'package:complexe_ui/creative_widgets/creative_button.dart';
import 'package:complexe_ui/creative_widgets/creative_circles.dart';
import 'package:complexe_ui/creative_widgets/text_field.dart';
import 'package:complexe_ui/creative_widgets/welcome_text.dart';
import 'package:complexe_ui/login_screen/login_screennotifier.dart';
import 'package:complexe_ui/utitlities/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController? userNameEdit;
    TextEditingController? passWordEdit;
    return ChangeNotifierProvider<LoginViewNotifier>(
      create: (context) => LoginViewNotifier(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(
                  parent: NeverScrollableScrollPhysics()),
              child: Consumer<LoginViewNotifier>(
                builder: (context, provider, child) {
                  return Form(
                    key: provider.formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const CircularEdgeContainer(),
                        const SizedBox(
                          height: 30,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: WelcomeText(
                            welcomeColor: Color(0xFF008827),
                            creativityColor: Colors.black,
                          ),
                        ),
                        const Align(
                          alignment: Alignment(0.8, -1.0),
                          child: SmallCircle(
                              height: 40, width: 40, color: Color(0xFF384529)),
                        ),
                        const Align(
                          alignment: Alignment(0.4, 0),
                          child: SmallCircle(
                            height: 40,
                            width: 40,
                            color: Color(0xFF008827),
                          ),
                        ),
                        LoginTextField(
                          // key: provider.formKey,
                          save: (value) =>
                              provider.setName = value, // tobe done
                          validate: context.validateUserName,
                          textEditingController: userNameEdit,
                          hintText: provider.userNameHint,
                          icon: Icons.people,
                          hideText: false,
                        ),
                        LoginTextField(
                          // key: provider.formKey,
                          save: (value) => provider.setPassword = value,
                          validate: context.validatePassWord,
                          textEditingController: passWordEdit,
                          hintText: provider.passwordHint,
                          icon: Icons.lock,
                          hideText: true,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        CreativeButton(
                            text: provider.loginText,
                            press: () {
                              provider.login(
                                  name: userNameEdit?.text,
                                  password: passWordEdit?.text);
                            }),
                        const SizedBox(
                          height: 40,
                        ),
                        BottomText(
                          text1: provider.dontHaveAccountText,
                          text2: provider.signInText,
                          press: () async {
                            await provider.navigateToSignIn(context);
                          },
                        ),
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
