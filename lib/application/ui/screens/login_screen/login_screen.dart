import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 100.0),
            child: Column(children: [
              Text(
                LoginStrings.hello.i18n,
                style: Theme.of(context).textTheme.labelLarge,
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
                    width: 170,
                    height: 69,
                    decoration: const BoxDecoration(
                        color: AppColors.brandSecondaryColor,
                        borderRadius: BorderRadius.all(AppRadius.small)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Image(
                          image: AssetImage('assets/images/google.png'),
                          width: 30,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          LoginStrings.google.i18n,
                          style: const TextStyle(
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
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(LoginStrings.notAMember),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        LoginStrings.registerNow,
                        style: TextStyle(
                            color: AppColors.brandPrimaryColor, fontSize: 13),
                      ))
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
