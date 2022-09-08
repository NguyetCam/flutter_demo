import 'package:flutter/material.dart';

class InterestSelecting extends StatefulWidget {
  const InterestSelecting({Key? key}) : super(key: key);

  @override
  State<InterestSelecting> createState() => _InterestSelectingState();
}

class _InterestSelectingState extends State<InterestSelecting> {
  final List<Widget> list = <Widget>[];

  @override
  void initState() {
    super.initState();
  }

  final List<String> interests = [
    "Action",
    "Drama",
    "Comedy",
    "Horror",
    "Adventure",
    "Thriller",
    "Romance",
    "Science",
    "Music",
    "Documentary",
    "Crime",
    "Fantasy",
    "Mystery",
    "Fiction",
    "Animation",
    "War",
    "History",
    "Television",
    "Superheroes",
    "Anime",
    "Sports",
    "K-Drama"
  ];

  List<bool> selected = List.generate(22, (index) => false);

  List<Widget> getChipWidget() {
    list.clear();
    for (int i = 0; i < interests.length; i++) {
      list.add(GestureDetector(
        onTap: () {
          setState(() {
            selected[i] = !selected[i];
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Chip(
            label: Text(interests[i]),
            backgroundColor: selected[i] ? Colors.red.shade600 : Colors.white,
            labelStyle: TextStyle(
                color: selected[i] ? Colors.white : Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 16),
            side: const BorderSide(color: Colors.red),
            labelPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          ),
        ),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    final screenWidth = size.width;
    final screenHeight = size.height;

    return Scaffold(
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 30, left: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            size: 30,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Choose Your Interest",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: screenWidth * 0.04,
                          right: screenWidth * 0.04,
                          top: 20,
                          bottom: 5),
                      child: const Text(
                        "Choose your interests and get the best movie recommendations. Don't worry, you can always change it later.",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                    )
                  ],
                )),
            Wrap(children: getChipWidget()),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        width: screenWidth * 0.45,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.pink.shade50),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selected = List.generate(
                                  interests.length, (index) => false);
                            });
                          },
                          child: const Text(
                            "Clear",
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                  Container(
                    width: screenWidth * 0.45,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.red.shade600),
                    child: const Text(
                      "Continue",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
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
}
