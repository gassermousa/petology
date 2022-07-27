// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:petology/app_cubits/app_cubit/cubit/app_cubit.dart';
import 'package:petology/app_cubits/app_cubit/cubit/app_state.dart';
import 'package:petology/data/models/pets_needs_model.dart';
import 'package:petology/presentation/componentes/btns.dart';
import 'package:petology/presentation/componentes/custom_appbar.dart';
import 'package:petology/presentation/componentes/footer.dart';
import 'package:petology/presentation/constant/colors.dart';
import 'package:petology/presentation/constant/onHover.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<PetsNeedsModel>? model;
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        print(state);
        if (state is GetPetsNeedsDaataSuccessState) {
          model = state.model;
        }

        return Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[
                      HexColor('#56392D'),
                      HexColor('#110B09'),
                    ]),
              ),
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  70.0, 220.0, 0.0, 0.0),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: <Widget>[
                                  const Text(
                                    'Not only people\nneed a house',
                                    style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  const SizedBox(
                                    width: 400.0,
                                    child: const Text(
                                      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy.',
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                SizedBox(
                                    width: 700,
                                    height: 300,
                                    child: Image.asset(
                                        'assets/images/Ellipse 2.png')),
                                Positioned(
                                  bottom: 75,
                                  child: Container(
                                    color: Colors.transparent,
                                    height: 75,
                                    width: 200,
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 10,
                                      borderRadius: BorderRadius.circular(250),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 30),
                                  child: SizedBox(
                                      width: 500,
                                      height: 500,
                                      child:
                                          Image.asset('assets/images/pop.png')),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          height: 500,
                          color: Colors.white,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  SizedBox(
                                      width: 700,
                                      height: 300,
                                      child: Image.asset(
                                          'assets/images/Ellipse 2.png')),
                                  Positioned(
                                    bottom: 75,
                                    child: Container(
                                      color: Colors.transparent,
                                      height: 75,
                                      width: 200,
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 10,
                                        borderRadius:
                                            BorderRadius.circular(250),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 30),
                                    child: SizedBox(
                                      width: 500,
                                      height: 500,
                                      child:
                                          Image.asset('assets/images/pop2.png'),
                                      //TODO: 2 images
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 300.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    0.0, 100.0, 0.0, 0.0),
                                child: Stack(
                                  alignment: Alignment.centerRight,
                                  children: <Widget>[
                                    Column(
                                      // mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: <Widget>[
                                        const Text(
                                          'About Petology',
                                          style: const TextStyle(
                                              fontSize: 30.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        const SizedBox(
                                          width: 400.0,
                                          child: Text(
                                            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea.',
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 300,
                                      height: 400,
                                      child: Image.asset(
                                          'assets/images/leg_icon.png'),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 500,
                          width: double.infinity,
                          color: HexColor('#F1F1F1'),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 40.0),
                            child: Column(
                              children: <Widget>[
                                Stack(
                                  alignment: Alignment.centerRight,
                                  children: <Widget>[
                                    const Text('Lets get this right ....',
                                        style: TextStyle(
                                            fontSize: 22.0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      width: 70,
                                      height: 70,
                                      child: Image.asset(
                                          'assets/images/leg_icon.png'),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                const Text(
                                    'What kind of friend you looking for?',
                                    style: const TextStyle(
                                        fontSize: 17.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                                const SizedBox(
                                  height: 50.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    const AnimalBox(
                                      nameAnimla: 'Cat',
                                      path: 'assets/images/cat.png',
                                    ),
                                    const SizedBox(
                                      width: 100.0,
                                    ),
                                    const AnimalBox(
                                        nameAnimla: 'Dog',
                                        path: 'assets/images/dog.png'),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 700,
                          width: double.infinity,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 40.0),
                            child: Column(
                              children: <Widget>[
                                Stack(
                                  alignment: Alignment.centerRight,
                                  children: <Widget>[
                                    const Text(
                                        'Our friends who\nlooking for a house',
                                        style: const TextStyle(
                                            fontSize: 22.0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      width: 70,
                                      height: 70,
                                      child: Image.asset(
                                          'assets/images/leg_icon.png'),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30.0,
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      CircleAvatar(
                                        radius: 20.0,
                                        backgroundColor: defaultColor,
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                                Icons.arrow_back_ios),
                                            color: Colors.white),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 170.0),
                                          child: ListView.separated(
                                              scrollDirection: Axis.horizontal,
                                              itemBuilder: (context, index) {
                                                return const AnimalBoxForList();
                                              },
                                              separatorBuilder:
                                                  (context, index) {
                                                return const SizedBox(
                                                  width: 30.0,
                                                );
                                              },
                                              itemCount: 3),
                                        ),
                                      ),
                                      CircleAvatar(
                                        radius: 20.0,
                                        backgroundColor: defaultColor,
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.arrow_forward_ios),
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 50.0,
                                ),
                                customBtn(
                                    width: 240,
                                    hight: 60,
                                    text: 'Show more ',
                                    onpress: () {},
                                    radius: 20.0,
                                    icon: Icons.arrow_forward_ios),
                                const SizedBox(height: 30.0)
                              ],
                            ),
                          ),
                        ),
                        Container(
                            height: 500.0,
                            width: double.infinity,
                            color: HexColor('#F1F1F1'),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 25.0, horizontal: 40.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      CircleStack(
                                          image: 'assets/images/t.png',
                                          text: 'transportation'),
                                      CircleStack(
                                          image: 'assets/images/toys.png',
                                          text: 'toys'),
                                      CircleStack(
                                          image: 'assets/images/bowl.png',
                                          text: 'Bowls and Cups'),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 25.0, horizontal: 120.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      const CircleStack(
                                          image: 'assets/images/Group 75.png',
                                          text: 'Pet food'),
                                      const CircleStack(
                                          image: 'assets/images/t.png',
                                          text: 'transportation'),
                                      const CircleStack(
                                          image: 'assets/images/toys.png',
                                          text: 'toys'),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                        const Footer(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class CircleStack extends StatelessWidget {
  final String image;
  final String text;
  const CircleStack({
    required this.image,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          height: 170.0,
          width: 120.0,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: defaultColor),
        ),
        Column(
          children: [
            Image.asset(
              image,
              width: 80.0,
              height: 100,
            ),
            Text(
              text,
              style: TextStyle(
                  color: HexColor('#FFE3C5'), fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    );
  }
}

class AnimalBoxForList extends StatelessWidget {
  //TODO: Na2s ne8er el atributtes

  const AnimalBoxForList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 350,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.black26)),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 300,
            width: 150,
            child: Image.asset('assets/images/pop.png'),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            'Dog',
            style: TextStyle(
                fontSize: 17.0,
                color: defaultColor,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20.0,
          ),
          borderCustomBtn(
              width: 180,
              hight: 50,
              text: 'Read More',
              onpress: () {},
              radius: 20)
        ],
      ),
    );
  }
}

class AnimalBox extends StatelessWidget {
  final String path;
  final String nameAnimla;
  const AnimalBox({
    Key? key,
    required this.path,
    required this.nameAnimla,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnHover(
      builder: (isHovered) {
        final color = isHovered ? HexColor('#FFE3C5') : HexColor('#F1F1F1');
        return Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset(path),
                  //TODO: 2 images
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  nameAnimla,
                  style: TextStyle(color: defaultColor),
                )
              ],
            ),
          ),
          height: 200.0,
          width: 200.0,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black26)),
        );
      },
    );
  }
}
