import 'package:facebook_task/routes/route_name.dart';
import 'package:facebook_task/theme/app_color.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {


  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(),
              Padding(
                padding: const EdgeInsets.all(80),
                child: Image(image: AssetImage("assets/Images/logo.png")),
              ),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !value.contains('@') ||
                            !value.contains('.')) {
                          return 'Invalid Email';
                        }
                        return null;
                      },
                      cursorColor: Colors.blue,
                      decoration: InputDecoration(
                        fillColor: Color(0x78d6dff1),
                        filled: true,
                        hintText: "Mobile Number or Email Address",
                        hintStyle: TextStyle(
                          color: Color(0xff898F9C),
                          fontSize: 16,
                        ),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(
                            width: 2,style: BorderStyle.solid,
                            color:AppColor.gray,
                          ),
                        ),
                        contentPadding: EdgeInsets.all(16),
                      ),
                    ),
                    SizedBox(height: 24),
                    TextFormField(
                      style: TextStyle(
                        color: Color(0xff898F9C),
                      ),
                      cursorColor: Colors.blue,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.visibility_off),
                          color: Color(0xff898F9C),
                        ),
                        fillColor: Color(0x78d6dff1),
                        filled: true,
                        hintText: "password",
                        hintStyle: TextStyle(
                          color: Color(0xff898F9C),
                          fontSize: 16,
                        ),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(
                            width: 2,
                            color: Color(0xff898F9C),
                          ),
                        ),
                        contentPadding: EdgeInsets.all(16),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context,RouteName.HomeScreen);
                },
                child: Center(
                  child: Text("Login", style: TextStyle(fontSize: 20)),
                ),

                style: ButtonStyle(
                  overlayColor: WidgetStatePropertyAll(Colors.transparent),
                  padding: WidgetStatePropertyAll(EdgeInsets.all(16)),

                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                  backgroundColor: WidgetStatePropertyAll(Color(0xff1877F2)),
                ),
              ),//Login
              TextButton(
                onPressed: () {},
                child: Text(
                  "Forgetten Password?",
                  style: TextStyle(color: Color(0xff898F9C)),
                ),
              ),//Forgetten Password?
              Spacer(flex: 3,),
              ElevatedButton(
                onPressed: () {

                },
                child: Center(
                  child: Text("Create Account", style: TextStyle(fontSize: 20)),
                ),

                style: ButtonStyle(
                  overlayColor: WidgetStatePropertyAll(Colors.transparent),
                  padding: WidgetStatePropertyAll(EdgeInsets.all(16)),
                  foregroundColor: WidgetStatePropertyAll(Color(0xff1877F2)),
                ),
              ),//Create Account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage("assets/Images/meta_logo.png"),
                    height: 50,
                    width: 50,
                  ),
                  Text("Meta",style: TextStyle(fontSize: 24,fontWeight:FontWeight.normal,color: Color(0xff1877F2)),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
