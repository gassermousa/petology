import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:petology/app_cubits/current_location_cubit/current_location_cubit.dart';
import 'package:petology/app_cubits/current_location_cubit/current_location_state.dart';
import 'package:petology/presentation/componentes/btns.dart';
import 'package:petology/presentation/componentes/default_drop_down.dart';
import 'package:petology/presentation/componentes/footer.dart';
import 'package:petology/presentation/componentes/txtformfield.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';

class HelpYourFriend extends StatelessWidget {
  HelpYourFriend({Key? key}) : super(key: key);
  TextEditingController NameController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController descController = TextEditingController();
  Position? position;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentLocationCubit, WebcubitState>(
      builder: (context, state) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/leg_icon.png',
                    width: 200,
                    height: 200,
                    color: HexColor('#FFE3C5'),
                  ),
                  SizedBox(
                    width: 400,
                    child: Padding(
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
                              const Text(
                                'Help Your Friend',
                                style: TextStyle(
                                  color: Colors.brown,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Image.asset(
                                'assets/images/camera.png',
                                width: 50,
                                height: 50,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              DefaultDropDownButton(
                                text: 'Category',
                                items: const ['dogs', 'cats'],
                                validateText: 'category must not be empty',
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              InkWell(
                                onTap: () async {
                                  position =
                                      await CurrentLocationCubit.get(context)
                                          .determinePosition();
                                  CurrentLocationCubit.get(context)
                                      .GetAdressFromLatLong(position!);
                                  locationController.text =
                                      CurrentLocationCubit.get(context).address;
                                },
                                child: Text(
                                  'Detect your current location',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.brown,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(children: [
                                SizedBox(
                                  width: 340.0,
                                  child: DefaultCardFormField(
                                    hintText: 'Location',
                                    width: double.infinity,
                                    textEditingController: locationController,
                                  ),
                                ),
                                InkWell(
                                  onTap: () async {
                                    position =
                                        await CurrentLocationCubit.get(context)
                                            .determinePosition();
                                    CurrentLocationCubit.get(context)
                                        .GetAdressFromLatLong(position!);
                                    locationController.text =
                                        CurrentLocationCubit.get(context)
                                            .address;
                                  },
                                  child: Icon(
                                    Icons.location_on_sharp,
                                    color: Colors.black,
                                  ),
                                ),
                              ]),
                              DefaultCardFormField(
                                hintText: 'Phone',
                                width: double.infinity,
                                textEditingController: phoneController,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              defaultButton(
                                  text: 'Send', onpress: () {}, radius: 20.0),
                              const SizedBox(
                                height: 20,
                              ),
                              defaultButton(
                                  text: 'Call', onpress: () {}, radius: 20.0),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Footer(),
            ],
          ),
        );
      },
    );
  }
}
