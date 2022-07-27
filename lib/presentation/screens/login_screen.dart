// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:petology/app_cubits/login_cubit/login_cubit.dart';
import 'package:petology/app_cubits/login_cubit/login_cubit_state.dart';
import 'package:petology/data/constant/constant.dart';
import 'package:petology/data/services/api_services.dart';
import 'package:petology/network/remote/endpoints.dart';
import 'package:petology/presentation/componentes/btns.dart';
import 'package:petology/presentation/componentes/divider.dart';
import 'package:petology/presentation/componentes/footer.dart';
import 'package:petology/presentation/componentes/txtformfield.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/presentation/componentes/widgets.dart';
import 'package:flutter_web_auth/flutter_web_auth.dart';
import '../../data/cach_helper/cach_helper.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(ApiServices()),
      child: SafeArea(
        child: BlocBuilder<LoginCubit, LoginCubitState>(
          builder: (context, state) {
            if (state is LoginSuccessState) {
              CacheHelper.savedata(key: 'token', value: state.token)
                  .then((value) {
                token = state.token;
              });

              print(token);
            }
            return SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.white,
                      width: 400,
                      child: Stack(
                        alignment: AlignmentDirectional.topCenter,
                        children: [
                          Image.asset(
                            'assets/images/Dog paw-cuate.png',
                            height: 150,
                            width: 150,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 134,
                            ),
                            child: Card(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: HexColor("#180701"),
                                ),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'Login',
                                      style: TextStyle(
                                        color: Colors.brown,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    DefaultCardFormField(
                                        hintText: 'Email',
                                        textEditingController: emailController),
                                    DefaultCardFormField(
                                      hintText: 'Password',
                                      textEditingController: passwordController,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    defaultButton(
                                        text: 'Login',
                                        onpress: () {
                                          LoginCubit.get(context).loginFunction(
                                              email: emailController.text,
                                              password:
                                                  passwordController.text);
                                        },
                                        radius: 20),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      alignment: Alignment.bottomRight,
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Forget password?',
                                          style: TextStyle(
                                            color: HexColor("492F24"),
                                          ),
                                        ),
                                      ),
                                    ),
                                    DefaultDashLineWithTextOr(),
                                    Padding(
                                      padding: const EdgeInsets.all(23.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: ElevatedButton(
                                              style: ButtonStyle(
                                                  shape:
                                                      MaterialStateProperty.all(
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15))),
                                                  foregroundColor:
                                                      MaterialStateProperty.all(
                                                          Colors.black),
                                                  padding: MaterialStateProperty.all(
                                                      const EdgeInsets.all(15)),
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                          Colors.blue[700]),
                                                  elevation:
                                                      MaterialStateProperty.all(0)),
                                              onHover: (v) {},
                                              onLongPress: () {},
                                              onPressed: () async {
                                                final result =
                                                    await FlutterWebAuth
                                                        .authenticate(
                                                  url: kAuthFacebook,
                                                  callbackUrlScheme:
                                                      kFacebookCallback,
                                                );
                                                final token = Uri.parse(result)
                                                        .queryParameters[
                                                    'accessToken'];
                                                print(token);
                                              },
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Icon(
                                                    Icons.facebook,
                                                    color: Colors.white,
                                                  ),
                                                  SizedBox(
                                                    width: 30,
                                                  ),
                                                  Text(
                                                    'Facebook',
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 40,
                                          ),
                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  border: Border.all(
                                                      color: Colors.grey,
                                                      width: 1.5)),
                                              child: ElevatedButton(
                                                  style: ButtonStyle(
                                                      shape: MaterialStateProperty.all(
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      15))),
                                                      foregroundColor:
                                                          MaterialStateProperty.all(
                                                              Colors.black),
                                                      padding:
                                                          MaterialStateProperty.all(
                                                              const EdgeInsets.all(
                                                                  15)),
                                                      backgroundColor:
                                                          MaterialStateProperty.all(
                                                              Colors.white),
                                                      elevation:
                                                          MaterialStateProperty.all(0)),
                                                  onHover: (v) {},
                                                  onLongPress: () {},
                                                  onPressed: () {},
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: const [
                                                      Icon(
                                                        Icons.g_translate,
                                                      ),
                                                      SizedBox(
                                                        width: 30,
                                                      ),
                                                      Text('Google'),
                                                    ],
                                                  )),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () async {
                                        print('object');
                                        print(ApiServices().loginFunction(
                                            'gasserM@gmail.com', '123456789'));
                                      },
                                      child: Text(
                                        'Didnt have an account? sign up',
                                        style: TextStyle(
                                          color: HexColor("#492f24"),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Footer(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
