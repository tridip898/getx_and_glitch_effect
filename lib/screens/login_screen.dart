import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/screens/signup_screen.dart';

import '../widgets/common_button.dart';
import '../widgets/round_icon.dart';
import '../widgets/text_input.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: height,
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              Center(
                  child: Text(
                "Login",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontFamily: "Times New Roman",
                    fontWeight: FontWeight.w900),
              )),
              SizedBox(height: 15,),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextInput(
                      controller: _emailController,
                      hintText: "Enter email",
                      icon: Icons.email,
                      obseure: false,
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Please enter email";
                        }return null;
                      },
                    ),
                    TextInput(
                        controller: _passwordController,
                        hintText: "Enter password",
                        icon: Icons.lock,
                        obseure: true,
                        suffIcon: Icons.visibility,
                      validator: (value){
                          if (value == null || value.isEmpty){
                            return "enter valid password";
                          }return null;
                      },
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot password?",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade700),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              CommonButton(
                onPressed: (){
                  if(_formKey.currentState!.validate()){
                    Get.to(HomeScreen());
                  }
                },
                buttonText: "Login",
              ),
              SizedBox(height: 15,),
              Center(
                  child: Text(
                    "Or login with",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.w500),
                  )),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  RoundIcon(
                    icon: "lib/icons/facebook.png",
                  ),
                  RoundIcon(
                    icon: "lib/icons/twitter.png",
                  ),
                  RoundIcon(
                    icon: "lib/icons/google.png",
                  )
                ],
              ),
              SizedBox(height: 15,),
              Center(
                child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Don't have account?",
                          style:
                          TextStyle(fontSize: 19, color: Colors.grey.shade700)),
                      WidgetSpan(child: GestureDetector(
                        onTap: (){
                          Get.to(SignupScreen());
                        },
                        child: Text("\tSignup",style: TextStyle(fontSize: 19,color: Colors.red),),
                      ))
                    ])),
              )
            ],
          ),
        ),
      ),
    );
  }

}
