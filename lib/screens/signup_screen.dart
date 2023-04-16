import 'package:flutter/material.dart';
import 'package:getx_tutorial/screens/login_screen.dart';

import '../widgets/common_button.dart';
import '../widgets/round_icon.dart';
import '../widgets/text_input.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            height: height,
            width: width,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: height * 0.15,
                  left: 0,
                  right: 0,
                  child: const Center(
                      child: Text(
                    "Register",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                        fontFamily: "Times New Roman",
                        fontWeight: FontWeight.w900),
                  )),
                ),
                Positioned(
                    top: height * 0.21,
                    left: 0,
                    right: 0,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextInput(
                              controller: _userNameController,
                              hintText: "Username",
                              icon: Icons.person,
                              obseure: false,
                            validator: (value){
                                if(value==null || value.isEmpty){
                                  return "enter username";
                                }return null;
                            },
                          ),
                          TextInput(
                            controller: _emailController,
                            hintText: "Enter email",
                            icon: Icons.email,
                            obseure: false,
                            validator: (value){
                              if(value==null || value.isEmpty){
                                return "enter email";
                              }return null;
                            },
                          ),
                          TextInput(
                            controller: _passwordController,
                            hintText: "Enter password",
                            icon: Icons.lock,
                            suffIcon: Icons.visibility_off,
                            obseure: true,
                            validator: (value){
                              if(value==null || value.isEmpty){
                                return "enter password";
                              }return null;
                            },
                          ),
                          TextInput(
                            controller: _confirmPasswordController,
                            hintText: "Confirm password",
                            icon: Icons.lock,
                            obseure: true,
                            suffIcon: Icons.visibility_off,
                            validator: (value){
                              if(value==null || value.isEmpty){
                                return "enter password";
                              }return null;
                            },
                          )
                        ],
                      ),
                    )),
                Positioned(
                    top: height * 0.7,
                    left: 20,
                    right: 20,
                    child: CommonButton(
                      onPressed: () {
                        if(_formKey.currentState!.validate()){
                          Get.to(LoginScreen());
                        }
                      },
                      buttonText: "Signup",
                    )),
                Positioned(
                  top: height * 0.8,
                  left: 20,
                  right: 20,
                  child: Center(
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Already have account?",
                          style:
                              TextStyle(fontSize: 19, color: Colors.grey.shade700)),
                          WidgetSpan(child: GestureDetector(
                            onTap: (){
                              Get.to(LoginScreen());
                            },
                            child: Text("\tLogin",style: TextStyle(fontSize: 19,color: Colors.red),),
                          ))
                    ])),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
