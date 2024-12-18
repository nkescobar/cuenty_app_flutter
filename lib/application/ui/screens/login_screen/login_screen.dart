import 'package:flutter/material.dart';
import 'package:cuenty_app/application/app/config/index.dart' show AppRoutes;
import 'package:cuenty_app/application/app/design/index.dart'
    show AppColors, AppRadius;
import 'package:cuenty_app/application/ui/screens/login_screen/index.dart'
    show LoginFormWidget;
import 'package:cuenty_app/application/ui/screens/login_screen/i18n/login.i18n.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  double expectedTitlesize = 55;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 100.0),
            child: Column(children: [
              TweenAnimationBuilder(
                tween: Tween<double>(
                    begin: 55,
                    end: expectedTitlesize), // para ver animacion cambiar begin
                duration: const Duration(milliseconds: 2000),
                builder: (context, sizeText, _) {
                  return Text(
                    LoginStrings.hello.i18n,
                    style: TextStyle(
                        fontSize: sizeText,
                        color: AppColors.brandPrimaryColor,
                        fontWeight: FontWeight.bold),
                  );
                },
                onEnd: () {
                  setState(() {
                    expectedTitlesize = expectedTitlesize == 55 ? 13 : 55;
                  });
                },
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 21, 16, 59),
                child: Text(
                  LoginStrings.description.i18n,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              const LoginFormWidget(),
              Row(
                children: [
                  const Expanded(
                      child: Divider(
                    color: AppColors.brandLightColorBorder,
                    thickness: 1.0,
                  )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    child: Text(LoginStrings.orContinue.i18n),
                  ),
                  const Expanded(
                      child: Divider(
                    color: AppColors.brandLightColorBorder,
                    thickness: 1.0,
                  )),
                ],
              ),
              const SizedBox(
                height: 42,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 189,
                    height: 69,
                    decoration: const BoxDecoration(
                        color: AppColors.brandSecondaryColor,
                        borderRadius: BorderRadius.all(AppRadius.small)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/google.png'),
                          width: 30,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          LoginStrings.google,
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: AppColors.brandLigthDarkColor),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 170,
                    height: 69,
                    decoration: const BoxDecoration(
                        color: AppColors.brandSecondaryColor,
                        borderRadius: BorderRadius.all(AppRadius.small)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/facebook.png'),
                          width: 30,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          LoginStrings.facebook,
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: AppColors.brandLigthDarkColor),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(LoginStrings.notAMember),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(AppRoutes.signInScreenRoute);
                    },
                    child: const Text(
                      LoginStrings.registerNow,
                      style: TextStyle(
                          color: AppColors.brandPrimaryColor, fontSize: 13),
                    ),
                  )
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
