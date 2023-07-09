// ignore: unused_import
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, duplicate_ignore, unused_local_variable, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:forumapp/views/widgets/input_widget.dart';
import 'package:get/get.dart';

import '../login_page.dart';
//import 'views/widgets/input_widget.dart';






class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {


final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();
final TextEditingController _nameController = TextEditingController();
final TextEditingController _usernameController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return  Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Text('Register Page', style: TextStyle(fontSize: 30,)),
             const  SizedBox(height: 30,
               ),
               InputWidget(
                hintText: 'Name',
                obscureText: false,
                  controller: _nameController,
              ),
              const  SizedBox(height: 30,
               ),
               InputWidget(
                hintText: 'Username',
                obscureText: false,
                  controller: _usernameController,
              ),
              const  SizedBox(height: 30,
               ),
               InputWidget(
                hintText: 'Email',
                obscureText: false,
                  controller: _emailController,
              ),
                const  SizedBox(
                  height: 20,
               ),
                InputWidget(
                   hintText: 'Password',
                obscureText: true,
                  controller: _passwordController,
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50, 
                      vertical: 15,
                      ),
                  ),
                  onPressed: () {}, 
                  child: const Text('Register'),
                ),
                const SizedBox(
                  height: 20,
                ),
                 TextButton(
                  onPressed: () {
               Get.to(() => const LoginPage());
                  },
                child: Text('Login', style: TextStyle(
                  fontSize: 30,
                 color: Colors.black,
                 ),
                ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}


 