// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:petology/presentation/componentes/btns.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool isHover = false;
  bool isHover2 = false;
  bool isHover3 = false;
  bool isHover4 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              HexColor('#56392D'),
              HexColor('#110B09'),
            ]),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 25.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Text(
              'petology',
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 270.0),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
              child: Row(
                children: <Widget>[
                  InkWell(
                      onHover: (value) {
                        setState(() {
                          isHover = value;
                        });
                      },
                      onTap: () {},
                      child: ItemAppBar(
                        isHover: isHover,
                        text: 'About us',
                      )),
                  SizedBox(width: 40.0),
                  InkWell(
                      onHover: (value) {
                        setState(() {
                          isHover2 = value;
                        });
                      },
                      onTap: () {},
                      child: ItemAppBar(
                        isHover: isHover2,
                        text: 'Categories',
                      )),
                  SizedBox(
                    width: 40.0,
                  ),
                  InkWell(
                      onHover: (value) {
                        setState(() {
                          isHover3 = value;
                        });
                      },
                      onTap: () {},
                      child: ItemAppBar(
                        isHover: isHover3,
                        text: 'Services',
                      )),
                  SizedBox(width: 40.0),
                  InkWell(
                      onHover: (value) {
                        setState(() {
                          isHover4 = value;
                        });
                      },
                      onTap: () {},
                      child: ItemAppBar(
                        isHover: isHover4,
                        text: 'Request',
                      )),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 17.0, 15.0, 0.0),
              child: Row(
                children: <Widget>[
                  btnAppBarr(text: 'Sign up', onpress: () {}, radius: 20),
                  SizedBox(
                    width: 20.0,
                  ),
                  btnAppBarr(text: 'Log in', onpress: () {}, radius: 20),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ItemAppBar extends StatelessWidget {
  const ItemAppBar({Key? key, required this.isHover, required this.text})
      : super(key: key);

  final bool isHover;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          text,
          style: TextStyle(fontSize: 20.0),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          color: Colors.white,
          width: 80.0,
          height: isHover ? 4.0 : 0.0,
        )
      ],
    );
  }
}
