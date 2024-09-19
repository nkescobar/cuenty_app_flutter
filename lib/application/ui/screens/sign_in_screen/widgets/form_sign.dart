import 'package:flutter/material.dart';
import 'package:cuenty_app/application/app/config/index.dart' show AppRoutes;
import 'package:cuenty_app/application/app/design/index.dart'
    show AppColors, AppRadius;
import 'package:cuenty_app/application/ui/providers/index.dart'
    show UserProvider;
import 'package:cuenty_app/application/ui/screens/sign_in_screen/i18n/sign_in_.i18n.dart';
import 'package:cuenty_app/core/utils/singleton_shared_prefences/singleton_shared_prefences.dart';

class SignInFormWidget extends StatefulWidget {
  const SignInFormWidget({super.key});

  @override
  State<SignInFormWidget> createState() => _SignInFormWidgetState();
}

class _SignInFormWidgetState extends State<SignInFormWidget> {
  final _formLoginKey = GlobalKey<FormState>();

  var userInputController = TextEditingController();
  var nameInputController = TextEditingController();

  var checkBoxState = false;

  late String userName;

  late BoxDecoration userContainerDecoration;
  late BoxDecoration nameContainerDecoration;

  late BoxDecoration pswContainerDecoration;

  final defaultInputBorder = InputBorder.none;

  final defaultInputLabelTheme = const TextStyle(
      fontSize: 13,
      color: AppColors.brandLigthDarkColor,
      fontWeight: FontWeight.normal);
  final activeContainerInputDecoration = BoxDecoration(
      color: AppColors.brandSecondaryColor,
      border: Border.all(color: AppColors.brandPrimaryColor, width: 2),
      borderRadius: const BorderRadius.all(AppRadius.small));

  final defaultContainerInputDecoration = const BoxDecoration(
      color: AppColors.brandSecondaryColor,
      borderRadius: BorderRadius.all(AppRadius.small));
  @override
  void initState() {
    super.initState();
    userContainerDecoration = defaultContainerInputDecoration;
    nameContainerDecoration = defaultContainerInputDecoration;

    pswContainerDecoration = defaultContainerInputDecoration;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        key: _formLoginKey,
        child: Column(
          children: [
            Container(
              height: 70,
              padding: const EdgeInsets.only(left: 24, bottom: 4),
              decoration: userContainerDecoration,
              child: TextFormField(
                controller: userInputController,
                style: Theme.of(context).textTheme.labelSmall,
                validator: ((value) {
                  print('holaa-----> $value');
                  print('holaa-----> ${value?.length}');

                  if (value == null || value.isEmpty) {
                    return SignInErrors.userError.i18n;
                  }

                  if (value.length >= 10) {
                    return SignInErrors.userErrorLen.i18n;
                  }
                  return null;
                }),
                onTap: () {
                  setState(() {
                    userContainerDecoration = activeContainerInputDecoration;
                    pswContainerDecoration = defaultContainerInputDecoration;
                    nameContainerDecoration = defaultContainerInputDecoration;
                  });
                },
                onTapOutside: (event) {
                  setState(() {
                    userContainerDecoration = defaultContainerInputDecoration;
                  });
                },
                onSaved: (userNameValue) {
                  userName = userNameValue!;
                },
                decoration: InputDecoration(
                  border: defaultInputBorder,
                  label: Text(SignInStrings.userInputLabel.i18n,
                      style: defaultInputLabelTheme),
                ),
              ),
            ),
            Container(
              height: 70,
              padding: const EdgeInsets.only(left: 24, bottom: 4),
              margin: const EdgeInsets.only(top: 24),
              decoration: nameContainerDecoration,
              child: TextFormField(
                controller: nameInputController,
                style: Theme.of(context).textTheme.labelSmall,
                validator: ((value) {
                  if (value == null || value.isEmpty) {
                    return SignInErrors.nameError.i18n;
                  }
                  return null;
                }),
                onTap: () {
                  setState(() {
                    nameContainerDecoration = activeContainerInputDecoration;
                    pswContainerDecoration = defaultContainerInputDecoration;
                    userContainerDecoration = defaultContainerInputDecoration;
                  });
                },
                onTapOutside: (event) {
                  setState(() {
                    nameContainerDecoration = defaultContainerInputDecoration;
                  });
                },
                onSaved: (userNameValue) {
                  userName = userNameValue!;
                },
                decoration: InputDecoration(
                  border: defaultInputBorder,
                  label: Text(SignInStrings.nameInputLabel.i18n,
                      style: defaultInputLabelTheme),
                ),
              ),
            ),
            Container(
              height: 70,
              padding: const EdgeInsets.only(left: 24, bottom: 4),
              margin: const EdgeInsets.only(top: 24),
              decoration: pswContainerDecoration,
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return SignInErrors.userPsw.i18n;
                  }
                  return null;
                },
                onTap: () {
                  setState(() {
                    pswContainerDecoration = activeContainerInputDecoration;
                    userContainerDecoration = defaultContainerInputDecoration;
                    nameContainerDecoration = defaultContainerInputDecoration;
                  });
                },
                onTapOutside: (event) {
                  setState(() {
                    pswContainerDecoration = defaultContainerInputDecoration;
                  });
                },
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    border: defaultInputBorder,
                    label: Text(SignInStrings.userPswInputLabel.i18n),
                    labelStyle: defaultInputLabelTheme),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  value: checkBoxState,
                  onChanged: (value) {
                    setState(() {
                      checkBoxState = !checkBoxState;
                    });
                  },
                  checkColor: AppColors.brandLightColor,
                  activeColor: AppColors.brandPrimaryColor,
                ),
                const Text(SignInStrings.agree),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    SignInStrings.terms.i18n,
                    style: const TextStyle(
                        color: AppColors.brandPrimaryColor, fontSize: 13),
                  ),
                ),
                const Text(SignInStrings.and),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    SignInStrings.privacy.i18n,
                    style: const TextStyle(
                        color: AppColors.brandPrimaryColor, fontSize: 13),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5),
              width: 394,
              height: 64,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.brandPrimaryColor,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(AppRadius.small))),
                child: Text(SignInStrings.getStarted.i18n),
                onPressed: () {
                  if (_formLoginKey.currentState!.validate()) {
                    print('Todos lo campos estan ok 🤯');
                    // _formLoginKey.currentState!.save();
                    userName = userInputController.text;
                    MySingletonSharedPreferencesImpl().userName = userName;
                    UserProvider.of(context)?.userData.name = userName;

                    debugPrint(
                        'usermane singleron ${MySingletonSharedPreferencesImpl().userName}');
                    Navigator.of(context).pushReplacementNamed(
                        AppRoutes.homeRoute,
                        arguments: userName);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
