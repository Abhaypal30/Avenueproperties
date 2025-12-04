import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



class LoginController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  Future<void> loginData() async {
    final response = await http.post(
      Uri.parse(''),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'email_id': emailController.text,
        'password': passwordController.text,
      }),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = jsonDecode(response.body);
      // log('ALL RESPONSE HERE -------- $data');
      String token = data['data']['token'];
      log("Token----$token");

      // final userProfile = AuthModel.fromJson(data['data']);
      // final userJson = jsonEncode(userProfile);

      // await secureStorage.writeSecureData(key: 'userProfile', value: userJson);
      // log('TOKEN  -------- $token');
      // await secureStorage.writeSecureData(key: "Token", value: token);
      // await secureStorage.writeSecureData(key: 'data', value: jsonEncode(data));

      // Get.offAll(() => HomePage());
    } else {
      final Map<String, dynamic> errorData = jsonDecode(response.body);
      final errorMessage = errorData['msg'];
      // log('Error Message ---------${errorMessage}');
      // Get.snackbar('Failed', '$errorMessage ',
      //     borderRadius: 0,
      //     backgroundColor: Colors.red,
      //     colorText: whiteColor,
      //     margin: EdgeInsets.all(0),
      //     snackPosition: SnackPosition.BOTTOM);
    }
  }
}
