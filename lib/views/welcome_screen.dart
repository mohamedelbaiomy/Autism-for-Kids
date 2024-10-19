import 'package:autism_for_kids/views/options/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    GlobalKey<FormState> formKey = GlobalKey();
    return Scaffold(
      backgroundColor: HexColor("#5ab2ffff"),
      body: Form(
        key: formKey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10).r,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      image: AssetImage(
                        "assets/welcome.jpg",
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.07),
                  TextFormField(
                    controller: nameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'you must enter your name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: "Your name",
                      hintText: 'please enter your name',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.07),
                  ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Get.off(
                          OptionsScreen(
                            name: nameController.text,
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade900,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      minimumSize: Size(140, 45),
                    ),
                    child: Text(
                      "Next",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
