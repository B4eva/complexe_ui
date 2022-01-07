import 'package:complexe_ui/Sigin_screen/sigin_screennotifier.dart';
import 'package:complexe_ui/creative_widgets/bottom_text.dart';
import 'package:complexe_ui/creative_widgets/creative_button.dart';
import 'package:complexe_ui/creative_widgets/creative_circles.dart';
import 'package:complexe_ui/creative_widgets/login_textfield.dart';
import 'package:complexe_ui/creative_widgets/welcome_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInSCreen extends StatelessWidget {
  const SignInSCreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignInScreenNotifier(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(
                  parent: NeverScrollableScrollPhysics()),
              child: Consumer<SignInScreenNotifier>(
                  builder: (context, provider, child) {
                return Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 300,
                        width: 300,
                        decoration: const BoxDecoration(
                            // shape: BoxShape.circle,
                            color: Color(0xFF008827),
                            borderRadius: BorderRadius.only(
                              // topRight: Radius.circular(180),
                              // topLeft: Radius.circular(180),
                              // bottomLeft: Radius.circular(180),
                              bottomRight: Radius.circular(200),
                            )),
                        child: const Center(
                          child: WelcomeText(
                              welcomeColor: Colors.white,
                              creativityColor: Colors.white),
                        ),
                      ),
                    ),
                    const Align(
                        alignment: Alignment(0.5, -0.5),
                        child: SmallCircle(color: Color(0xFF384529))),
                    const SizedBox(
                      height: 20,
                    ),
                    LoginTextField(
                        textEditingController: provider.emailEditingController,
                        hintText: provider.emailHint,
                        icon: Icons.mail_outline_rounded),
                    LoginTextField(
                        textEditingController:
                            provider.userNameEditingController,
                        hintText: provider.userNameHint,
                        icon: Icons.person),
                    LoginTextField(
                        textEditingController:
                            provider.passwordEditingController,
                        hintText: provider.passwordHint,
                        icon: Icons.lock),
                    const SizedBox(
                      height: 30,
                    ),
                    CreativeButton(text: provider.signInText, press: () {}),
                    const SizedBox(
                      height: 30,
                    ),
                    BottomText(
                        text1: provider.haveAccountText,
                        text2: provider.loginText,
                        press: () {}),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                );
              }),
            ),
          );
        },
      ),
    );
  }
}
