
// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:forumapp/constants/constants.dart';

class AuthenticationController extends GetxController 
{
    final isLoading = false.obs;

    Future register(
      {
        required  String name,
        required  String username,
        required  String email,
        required  String password,
     }
  ) async {
    try {
       isLoading.value = true;
      var data = {
            'name' : name,
            'username' : username,
            'email' : email,
            'password' : password,
      };

      var response = await  http.post(
        Uri.parse('${url}register'),
        headers: {
          'Accept' : 'application/json',
        },
        body: data,
      );

      if(response.statusCode == 201)
      {
         isLoading.value = false;
          print(json.decode(response.body));
      }else{
         isLoading.value = false;
          Get.snackbar(
          'Error',
          json.decode(response.body)['message'],
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
       print(json.decode(response.body));
      }
    } catch (e) {
      isLoading.value = false;
      print(e.toString());
    }
  }
 
    
}