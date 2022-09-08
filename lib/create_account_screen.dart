import 'package:flutter/material.dart';
import 'package:flutter_demo/sign_in_screen.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    final screenHeight = size.height;
    final screenWidth = size.width;

    return Scaffold(
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Padding(
                padding: EdgeInsets.only(
                    top: screenHeight * 0.1, right: screenWidth * 0.8),
                child: const Icon(
                  Icons.arrow_back,
                  size: 30,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: screenHeight * 0.02, bottom: screenHeight * 0.02),
              child: Image.asset(
                "image/logo.png",
                height: screenHeight * 0.2,
              ),
            ),
            const Text(
              "Create Your Account",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                  width: screenWidth * 0.8,
                  height: 50,
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: const Icon(
                        Icons.email,
                        size: 20,
                      ),
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.grey.shade100,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: SizedBox(
                  width: screenWidth * 0.8,
                  height: 50,
                  child: TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle:
                            const TextStyle(fontSize: 15, color: Colors.grey),
                        prefixIcon: const Icon(Icons.lock, size: 20),
                        suffixIcon: const Icon(Icons.remove_red_eye, size: 20),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none),
                        filled: true,
                        fillColor: Colors.grey.shade100),
                  )),
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
              padding: const EdgeInsets.only(top: 20),
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
                            builder: (context) => SignIn(
                                email: emailController.text,
                                password: passwordController.text)));
                      },
                      child: (const Text(
                        "Sign up",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )))),
            ),
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
                          MaterialPageRoute(builder: (context) => SignIn()));
                    },
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                          color: Colors.red.shade700,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    emailController.addListener(() {
      final String email = emailController.text.toLowerCase();
      emailController.value = emailController.value.copyWith(
          text: email,
          selection: TextSelection(
              baseOffset: email.length, extentOffset: email.length),
          composing: TextRange.empty);
    });
    passwordController.addListener(() {
      final String password = passwordController.text.toLowerCase();
      passwordController.value = passwordController.value.copyWith(
          text: password,
          selection: TextSelection(
              baseOffset: password.length, extentOffset: password.length),
          composing: TextRange.empty);
    });
  }
}
