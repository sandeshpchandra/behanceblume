import 'package:flutter/material.dart';
import 'package:flutter_application_4/categoryproduct.dart';

class WomensCatogery extends StatefulWidget {
  const WomensCatogery({super.key});

  @override
  State<WomensCatogery> createState() => _WomensCatogeryState();
}

class _WomensCatogeryState extends State<WomensCatogery> {
  final List<String> label = [
    "T-Shirts",
    "Sweats",
    "Jackets",
    "Jeans",
    "Overalls",
    "Skirts",
    "Dresses"
  ];
  final List<String> images = [
    "assets/vertical.jpeg",
    "assets/vertical1.jpeg",
    "assets/vertical2.jpeg",
    "assets/vertical3.jpeg",
    "assets/model.jpg",
    "assets/model1.png",
    "assets/model.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back_ios_new_outlined),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Spacer(),
                  Icon(Icons.search_outlined),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "WOMEN .",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    "CLOTHING",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              )
            ],
          ),
        ),
        Divider(
          thickness: 1,
          color: Colors.grey,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.symmetric(vertical: 25),
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              itemCount: label.length,
              itemBuilder: (BuildContext context, int index) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CategoryProduct()),
                  );
                },
                child: Row(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200)),
                      child: Image.asset(
                        images[index],
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    label[index],
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(
                    Icons.keyboard_arrow_right_outlined,
                    color: Colors.grey,
                  )
                ]),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
