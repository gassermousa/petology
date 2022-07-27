// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:petology/app_cubits/app_cubit/cubit/app_cubit.dart';
import 'package:petology/data/services/api_services.dart';
import 'package:petology/presentation/componentes/btns.dart';
import 'package:petology/presentation/componentes/custom_appbar.dart';
import 'package:petology/presentation/componentes/footer.dart';
import 'package:petology/presentation/constant/colors.dart';
import 'package:petology/presentation/constant/onHover.dart';
import 'package:petology/presentation/screens/about_us_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/presentation/screens/adaption.dart';
import 'package:petology/presentation/screens/help_screen.dart';
import 'package:petology/presentation/screens/login_screen.dart';
import 'package:petology/presentation/screens/request_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 1000),
        child: CustomAppBar(),
      ),
      // backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: AboutUsScreen(),
      ),
      // ignore: prefer_const_literals_to_create_immutables
    );
  }
}
