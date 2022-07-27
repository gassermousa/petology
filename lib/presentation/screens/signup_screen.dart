import 'package:flutter/material.dart';
import 'package:petology/app_cubits/singup_cubit/sign_up_cubit.dart';
import 'package:petology/data/cach_helper/cach_helper.dart';
import 'package:petology/data/constant/constant.dart';
import 'package:petology/data/models/user_model.dart';
import 'package:petology/data/services/api_services.dart';
import 'package:petology/presentation/componentes/btns.dart';
import 'package:petology/presentation/componentes/footer.dart';
import 'package:petology/presentation/componentes/txtformfield.dart';
import 'package:petology/presentation/componentes/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController reEnterPasswordController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(ApiServices()),
      child: BlocBuilder<SignUpCubit, SignUpState>(
        builder: (context, state) {
          if (state is SignUpSuccessState) {
            CacheHelper.savedata(key: 'token', value: state.token)
                .then((value) {
              token = state.token;
            });
          }
          return Scaffold(
            backgroundColor: Colors.white,
            body: ListView(
              children: [
                Center(
                  child: Stack(
                    alignment: AlignmentDirectional.topStart,
                    children: [
                      const Image(
                        height: 60,
                        width: 60,
                        color: Colors.black,
                        image: AssetImage(
                          'assets/images/leg_icon.png',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Container(
                          width: 450,
                          padding: const EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border:
                                  Border.all(color: Colors.black, width: 2)),
                          child: Column(
                            children: [
                              const Text(
                                'Sign up',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const DefaultCardLoginWithFacebookAndGoogle(),
                              const DefaultDashLineWithTextOr(),
                              DefaultCardFormField(
                                  hintText: 'First Name',
                                  textEditingController: firstNameController),
                              DefaultCardFormField(
                                  hintText: 'Last Name',
                                  textEditingController: lastNameController),
                              DefaultCardFormField(
                                  hintText: 'Email',
                                  textEditingController: emailController),
                              DefaultCardFormField(
                                  hintText: 'Password',
                                  textEditingController: passwordController),
                              DefaultCardFormField(
                                  hintText: 'Re_Enter Password',
                                  textEditingController:
                                      reEnterPasswordController),
                              DefaultCardFormField(
                                  hintText: 'Phone',
                                  textEditingController: phoneController),
                              DefaultCardFormField(
                                  hintText: 'Country',
                                  textEditingController: countryController),
                              SizedBox(
                                height: 20,
                              ),
                              defaultButton(
                                  text: 'Sign up',
                                  onpress: () {
                                    SignUpCubit.get(context).signUp(
                                        userModel: UserModel(
                                            email: emailController.text,
                                            country: countryController.text,
                                            firstName: firstNameController.text,
                                            lastName: lastNameController.text,
                                            password: passwordController.text,
                                            phoneNumber: phoneController.text));
                                  },
                                  radius: 20.0),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Already have an account? ',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                  TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'login',
                                        style: TextStyle(fontSize: 18),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                const Footer(),
              ],
            ),
          );
        },
      ),
    );
  }
}
