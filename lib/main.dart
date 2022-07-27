import 'package:flutter/material.dart';
import 'package:petology/app_cubits/app_cubit/cubit/app_cubit.dart';
import 'package:petology/app_cubits/current_location_cubit/current_location_cubit.dart';
import 'package:petology/data/cach_helper/cach_helper.dart';
import 'package:petology/data/repository/repository.dart';
import 'package:petology/data/services/api_services.dart';
import 'package:petology/network/remote/dio_helper.dart';
import 'package:petology/presentation/screens/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  await DioHelper.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  AppRepository appRepository = AppRepository(ApiServices());
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppCubit(appRepository)..footerData(),
        ),
        BlocProvider(
          create: (context) => CurrentLocationCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: HomeScreen(),
      ),
    );
  }
}
