// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:petology/app_cubits/current_location_cubit/current_location_cubit.dart';
import 'package:petology/app_cubits/current_location_cubit/current_location_state.dart';
import 'package:petology/presentation/componentes/custom_appbar.dart';
import 'package:petology/presentation/componentes/default_drop_down.dart';
import 'package:petology/presentation/componentes/footer.dart';
import 'package:petology/presentation/componentes/txtformfield.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';

class RequestScreen extends StatelessWidget {
  RequestScreen({Key? key}) : super(key: key);
  TextEditingController NameController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController descController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Position position;
    return BlocBuilder<CurrentLocationCubit, WebcubitState>(
      builder: (context, state) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
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
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            //mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text(
                                'Request',
                                style: TextStyle(
                                  color: Colors.brown,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Image.asset(
                                'assets/images/dog5.png',
                                width: 300,
                                height: 300,
                              ),
                              DefaultCardFormField(
                                hintText: 'Name',
                                width: double.infinity,
                                textEditingController: NameController,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              DefaultDropDownButton(
                                text: 'Category',
                                items: const ['dogs', 'cats'],
                                validateText: 'category must not be empty',
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Expanded(
                                    child: DefaultDropDownButton(
                                      text: 'Year',
                                      items: const ['2021', '2022'],
                                      validateText: 'year must not be empty',
                                    ),
                                  ),
                                  Expanded(
                                    child: DefaultDropDownButton(
                                      text: 'Month',
                                      items: const ['july', 'jun', 'nov'],
                                      validateText: 'month must not be empty',
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Expanded(
                                    child: DefaultDropDownButton(
                                      text: 'Size',
                                      items: const ['50', '260'],
                                      validateText: 'Size must not be empty',
                                    ),
                                  ),
                                  Expanded(
                                    child: DefaultDropDownButton(
                                      text: 'Bread',
                                      items: const ['1', '2', '3'],
                                      validateText: 'bread must not be empty',
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Expanded(
                                    child: DefaultDropDownButton(
                                      text: 'Gender',
                                      items: const ['Male', 'Female'],
                                      validateText: 'gender must not be empty',
                                    ),
                                  ),
                                  Expanded(
                                    child: DefaultDropDownButton(
                                      text: 'Bread',
                                      items: const ['1', '2', '3'],
                                      validateText: 'Bread must not be empty',
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Expanded(
                                    child: DefaultDropDownButton(
                                      text: 'Hair Length',
                                      items: const ['1', '10'],
                                      validateText:
                                          'Hair Length must not be empty',
                                    ),
                                  ),
                                  Expanded(
                                    child: DefaultDropDownButton(
                                      text: 'Care & Behavior',
                                      items: const ['good', 'bad'],
                                      validateText:
                                          'Care & Behavior must not be empty',
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: DefaultDropDownButton(
                                      text: 'House Traind',
                                      items: const ['location', 'country'],
                                      validateText:
                                          'House Traind must not be empty',
                                    ),
                                  ),
                                  Expanded(
                                    child: DefaultDropDownButton(
                                      text: 'Color',
                                      items: const ['grey', 'black', 'white'],
                                      validateText: 'Color must not be empty',
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: AlignmentDirectional.bottomStart,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15.0, top: 20),
                                  child: InkWell(
                                    onTap: () async {
                                      position = await CurrentLocationCubit.get(
                                              context)
                                          .determinePosition();
                                      CurrentLocationCubit.get(context)
                                          .GetAdressFromLatLong(position);
                                      locationController.text =
                                          CurrentLocationCubit.get(context)
                                              .address;
                                    },
                                    child: Text(
                                      'Detect your current location',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.brown,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
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
                                        .GetAdressFromLatLong(position);
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
                              const SizedBox(
                                height: 20,
                              ),
                              DefaultCardFormField(
                                hintText: 'phone',
                                width: double.infinity,
                                textEditingController: phoneController,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 220,
                                child: DefaultCardFormField(
                                  hintText: 'Description',
                                  width: double.infinity,
                                  textEditingController: descController,
                                ),
                              ),
                              const Align(
                                alignment: AlignmentDirectional.bottomStart,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15.0, top: 20),
                                  child: Text(
                                    'Vaccinated (up to date)',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.brown,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(600, 50),
                                  primary: HexColor("492F24"),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                  ),
                                ),
                                child: Text(
                                  "Send",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: HexColor("#FFE3C5"),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 140,
                    child: Image.asset(
                      'assets/images/leg_icon.png',
                      width: 200,
                      height: 200,
                      color: HexColor('#FFE3C5'),
                    ),
                  )
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
