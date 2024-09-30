import 'package:flutter/material.dart';
import 'package:cuenty_app/application/ui/providers/index.dart'
    show UserProvider;
import 'package:cuenty_app/application/app/config/index.dart' show AppRoutes;
import 'package:cuenty_app/application/ui/shared/helpers/index.dart'
    show validateInput;
import 'package:cuenty_app/application/ui/screens/login_screen/index.dart';
import 'package:cuenty_app/application/app/design/index.dart'
    show AppColors, AppRadius;
import 'package:cuenty_app/core/utils/index.dart'
    show MySingletonSharedPreferencesImpl;

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({super.key});

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  final _formLoginKey = GlobalKey<FormState>();

  var userInputController = TextEditingController();
  final _userFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  var checkBoxState = false;

  late String userName;

  late BoxDecoration userContainerDecoration;
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
    pswContainerDecoration = defaultContainerInputDecoration;
  }

  @override
  void dispose() {
    userInputController.dispose();
    _userFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
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
                key: const Key('input-name'),
                controller: userInputController,
                focusNode: _userFocusNode,
                style: Theme.of(context).textTheme.labelSmall,
                validator: (value) => validateInput(value),
                onTap: () {
                  setState(() {
                    userContainerDecoration = activeContainerInputDecoration;
                    pswContainerDecoration = defaultContainerInputDecoration;
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
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (text) {
                  setState(() {
                    userContainerDecoration = defaultContainerInputDecoration;
                    pswContainerDecoration =
                        activeContainerInputDecoration; // Update decoration here
                  });
                  FocusScope.of(context).requestFocus(_passwordFocusNode);
                },
                decoration: InputDecoration(
                  border: defaultInputBorder,
                  label: Text(LoginStrings.userInputLabel.i18n,
                      style: defaultInputLabelTheme),
                ),
              ),
            ),
            Container(
              height: 70,
              padding: const EdgeInsets.only(left: 24, bottom: 4),
              margin: const EdgeInsets.symmetric(vertical: 24),
              decoration: pswContainerDecoration,
              child: TextFormField(
                key: const Key('password-name'),
                focusNode: _passwordFocusNode,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return LoginErrors.userPsw.i18n;
                  }
                  return null;
                },
                onTap: () {
                  setState(() {
                    pswContainerDecoration = activeContainerInputDecoration;
                    userContainerDecoration = defaultContainerInputDecoration;
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
                    label: Text(LoginStrings.userPswInputLabel.i18n),
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
                const Expanded(child: Text(LoginStrings.rememberMe)),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    LoginStrings.recoveryPassword,
                    style: defaultInputLabelTheme,
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 32, bottom: 48),
              width: 394,
              height: 64,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.brandPrimaryColor,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(AppRadius.small))),
                child: Text(LoginStrings.logIn.i18n),
                onPressed: () {
                  if (_formLoginKey.currentState!.validate()) {
                    debugPrint('Todos lo campos estan ok 🤯');
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
