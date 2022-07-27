//{
// gasserM@gmail.com
//123456789
//   "accessToken": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ODAsImVtYWlsIjoiZ2Fzc2VyTUBnbWFpbC5jb20iLCJpYXQiOjE2NTg4NTk5NjIsImV4cCI6MTY1ODk0NjM2Mn0.XIQmiY8XUtsQS6qRDi_FENrgu8vY5ovxb-f25qF79QE"
//}
import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:petology/data/models/user_model.dart';
import 'package:petology/network/remote/dio_helper.dart';
import 'package:petology/network/remote/endpoints.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<String> loginFunction(String email, String password) async {
    Response response = await DioHelper.postData(
        url: loginEndpoint, data: {'email': email, 'password': password});

    return response.data["accessToken"];
  }

  Future<String> registerUser(UserModel userModel) async {
    Response response = await DioHelper.postData(
        url: registerEndpoint, data: userModel.toJson());

    return response.data["accessToken"];
  }

  Future<dynamic> footerData() async {
    Response response = await DioHelper.getdata(url: footerEndpoint);
    print(response.data);
    return response.data;
  }

  Future<List<dynamic>> petsNeedsData() async {
    print('tmam');
    Response response = await DioHelper.getdata(url: petsNeedsEndpoint);
    return response.data;
  }

  Future<String> loginUserWithFB() async {
    String accessToken = "";
    final http.Response response = await http.get(
      Uri.parse(kAuthFacebook),
      headers: {
        "accept": "application/json",
      },
    );
    if (response.statusCode == 200) {
      accessToken = jsonDecode(response.body)["accessToken"];
    }
    return accessToken;
  }

  Future<String> loginUserWithGoogle() async {
    String accessToken = "";
    final http.Response response = await http.get(
      Uri.parse(kAuthGoogle),
      headers: {
        "accept": "application/json",
      },
    );
    if (response.statusCode == 200) {
      accessToken = jsonDecode(response.body)["accessToken"];
    }
    return accessToken;
  }
}
