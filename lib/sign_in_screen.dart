import 'package:flutter/material.dart';
import 'package:flutter_demo/create_account_screen.dart';
import 'package:flutter_demo/interest_selecting_screen.dart';

class SignIn extends StatefulWidget {
  SignIn({Key? key, this.email, this.password}) : super(key: key);

  String? email;
  String? password;

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    final screenWidth = size.width;
    final screenHeight = size.height;

    return Scaffold(
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Column(children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Padding(
              padding: EdgeInsets.only(
                  top: screenHeight * 0.08, right: screenWidth * 0.8),
              child: const Icon(
                Icons.arrow_back,
                size: 30,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: screenHeight * 0.01, bottom: screenHeight * 0.02),
            child: Image.asset(
              "image/logo.png",
              height: screenHeight * 0.2,
            ),
          ),
          const Text(
            "Login to Your Account",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, letterSpacing: 1),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: SizedBox(
              height: 50,
              width: screenWidth * 0.8,
              child: TextFormField(
                initialValue: widget.email,
                decoration: InputDecoration(
                    hintText: (widget.email == null || widget.email == "")
                        ? "Email"
                        : null,
                    hintStyle:
                        const TextStyle(color: Colors.grey, fontSize: 15),
                    prefixIcon: const Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Colors.grey.shade100),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: SizedBox(
              height: 50,
              width: screenWidth * 0.8,
              child: TextFormField(
                initialValue: widget.password,
                decoration: InputDecoration(
                    hintText: (widget.password == null || widget.password == "")
                        ? "Password"
                        : null,
                    hintStyle:
                        const TextStyle(color: Colors.grey, fontSize: 15),
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: const Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Colors.grey.shade100),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.red,
                        width: 3,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(6)),
                width: 20,
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 0.5),
                child: Text(
                  "Remember me",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.red.shade700,
                    borderRadius: BorderRadius.circular(20)),
                height: 50,
                width: screenWidth * 0.8,
                child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const InterestSelecting()));
                    },
                    child: (const Text(
                      "Sign in",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )))),
          ),
          Text("Forgot the password?", style: TextStyle(
            color: Colors.red.shade700, fontWeight: FontWeight.bold
          ),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: screenWidth * 0.3,
                  child: Divider(
                    height: 20,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                    color: Colors.grey.shade300,
                  ),
                ),
                const Text(
                  "or continue with",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
                SizedBox(
                  width: screenWidth * 0.3,
                  child: Divider(
                    height: 20,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                    color: Colors.grey.shade300,
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 70,
                height: 45,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(10)),
                child: const Icon(
                  Icons.facebook,
                  color: Colors.blue,
                  size: 25,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: 70,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade300)),
                  child: const Icon(
                    Icons.g_mobiledata,
                    color: Colors.red,
                    size: 40,
                  ),
                ),
              ),
              Container(
                width: 70,
                height: 45,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(10)),
                child: const Icon(
                  Icons.apple,
                  color: Colors.black,
                  size: 30,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Text(
                    "Already have an account?",
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const CreateAccount()));
                  },
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                        color: Colors.red.shade700,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
