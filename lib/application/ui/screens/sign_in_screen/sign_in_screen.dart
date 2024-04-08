import 'package:flutter/material.dart';
import 'package:cuenty_app/application/ui/screens/sign_in_screen/i18n/sign_in_.i18n.dart';
import 'package:cuenty_app/application/app/config/index.dart' show AppRoutes;
import 'package:cuenty_app/application/ui/screens/sign_in_screen/widgets/index.dart'
    show SignInFormWidget;
import 'package:cuenty_app/application/app/design/index.dart'
    show AppColors, AppRadius;
import 'package:cuenty_app/application/ui/shared/widgets/index.dart'
    show AppBarWidget;

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        elevation: 0.0,
        border: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              SignInStrings.signIn.i18n,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              child: Text(
                SignInStrings.description.i18n,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 20,
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
                        SignInStrings.google.i18n,
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
                        SignInStrings.facebook,
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
              height: 20,
            ),
            Row(
              children: [
                const Expanded(
                    child: Divider(
                  color: AppColors.brandLightColorBorder,
                  thickness: 1.0,
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: Text(SignInStrings.orContinue.i18n),
                ),
                const Expanded(
                    child: Divider(
                  color: AppColors.brandLightColorBorder,
                  thickness: 1.0,
                )),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const SignInFormWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(SignInStrings.alreadyAccount),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(AppRoutes.initialRoute);
                  },
                  child: const Text(
                    SignInStrings.logIn,
                    style: TextStyle(
                        color: AppColors.brandPrimaryColor, fontSize: 13),
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
