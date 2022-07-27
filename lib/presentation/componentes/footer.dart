import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:petology/app_cubits/app_cubit/cubit/app_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/app_cubits/app_cubit/cubit/app_state.dart';
import 'package:petology/data/models/footer_model.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FooterModel? footr;
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is GetFooterDataSuccessState) {
          footr = state.model;
        }
        return footr == null
            ? Center(child: CircularProgressIndicator())
            : Container(
                color: HexColor('#56392D'),
                height: 160,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.topEnd,
                            children: [
                              Text(
                                'For any qustion',
                                style: TextStyle(
                                  color: HexColor("#FFE3C5"),
                                  fontSize: 20,
                                ),
                              ),
                              Image.asset(
                                'assets/images/leg_icon.png',
                                width: 50,
                                height: 50,
                                color: HexColor("#FFE3C5"),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.email,
                                  color: HexColor("#AE957B"),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  footr!.email!,
                                  style: TextStyle(
                                    color: HexColor("#AE957B"),
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.phone,
                                color: HexColor('#AE957B'),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                footr!.phone!,
                                style: TextStyle(
                                    color: HexColor('#AE957B'), fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.topEnd,
                              children: [
                                Text(
                                  'We are waiting you',
                                  style: TextStyle(
                                    color: HexColor("#FFE3C5"),
                                    fontSize: 20,
                                  ),
                                ),
                                Image.asset(
                                  'assets/images/leg_icon.png',
                                  width: 50,
                                  height: 50,
                                  color: HexColor("#FFE3C5"),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: HexColor("#AE957B"),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    footr!.location!,
                                    style: TextStyle(
                                      color: HexColor("#AE957B"),
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: HexColor('#AE957B'),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  footr!.location2!,
                                  style: TextStyle(
                                      color: HexColor('#AE957B'), fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    //const Spacer(),
                    Image.asset(
                      'assets/images/tamas-pap-kA967nN0jAA-unsplash-removebg-preview.png',
                      alignment: AlignmentDirectional.bottomEnd,
                      height: 400,
                      width: 300,
                    )
                  ],
                ),
              );
      },
    );
  }
}
