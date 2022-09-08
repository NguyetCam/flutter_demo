import 'package:flutter/material.dart';
import 'package:flutter_demo/signin_navigation_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // get size of screen
    final Size size = MediaQuery.of(context).size;

    final screenWidth = size.width;
    final screenHeight = size.height;


    return Scaffold(
      body: Stack(
        children: [
           Image.asset(
              "image/background-template.jpg",
              color: Colors.blueGrey.withOpacity(0.8).withRed(150).withAlpha(200).withBlue(150),
              colorBlendMode: BlendMode.modulate,
              fit: BoxFit.fitHeight,
              height: screenHeight,
              width: screenWidth,
            ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight*0.5, width: screenWidth,),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Welcome to Mova",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w800,
                      letterSpacing: 2,),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 30),
                child: Text(
                  "The best movie streaming app of the century to make your days great!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: "Urbanist"),
                  textAlign: TextAlign.center,
                ),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignInNavigation()));
                  },
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.red.shade600,
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 18, horizontal: 130),
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                            fontFamily: 'Urbanist',
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            letterSpacing: 1),
                      ),
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
