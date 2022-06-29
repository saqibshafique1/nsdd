import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nsdd/utils/file_path.dart';
import 'package:nsdd/utils/routes.dart';

import '../utils/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obSecure = true;

  final _globalKeyLoginForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: SvgPicture.asset(
              FilePath.topRightCornerBg,
              height: 152.h,
              width: 222.w,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: kPagePadding,
              child: Center(
                child: SingleChildScrollView(
                  child: Form(
                    key: _globalKeyLoginForm,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Login',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        kPageItemSpacing,
                        TextFormField(
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.pin),
                            hintText: 'Enter cnic no',
                          ),
                        ),
                        kPageItemSpacing,
                        TextFormField(
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          obscureText: obSecure,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.key),
                            hintText: 'Enter Password',
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    obSecure = !obSecure;
                                  });
                                },
                                icon: obSecure
                                    ? const Icon(
                                        Icons.visibility,
                                      )
                                    : const Icon(Icons.visibility_off)),
                          ),
                        ),
                        kPageItemSpacing,
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              RouteGenerator.forgetPassword,
                            );
                          },
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              'Forgot Password?',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ),
                        kPageItemSpacing2,
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              //      Agar tum ye chahtay ho k screen jab change ho or history delete ho jaye then use below one

                              Navigator.pushReplacementNamed(
                                  context, RouteGenerator.home);

                              //      Agar tum ye chahtay ho k screen jab change ho or history delete na  ho then use below one
                              // Navigator.pushNamed(context, RouteGenerator.home);
                            },
                            child: Text(
                              'Login',
                              style: Theme.of(context).textTheme.button,
                            ),
                          ),
                        ),
                        kPageItemSpacing,
                        Align(
                          alignment: Alignment.center,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Don’t have an account? ',
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                                TextSpan(
                                  text: 'Register',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6!
                                      .copyWith(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.restorablePushReplacementNamed(
                                        context,
                                        RouteGenerator.signup,
                                      );
                                    },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
