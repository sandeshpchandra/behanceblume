import 'package:flutter/material.dart';

import 'womenscatogery.dart';

class WomensPage extends StatefulWidget {
  const WomensPage({super.key});

  @override
  State<WomensPage> createState() => _WomensPageState();
}

class _WomensPageState extends State<WomensPage> {
  String dropdownvalue = "women";
  var items = ["women", "men"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.arrow_back_ios_new_outlined),
                SizedBox(
                  width: 10,
                ),
                DropdownButton(
                  value: dropdownvalue,
                  icon: Icon(Icons.arrow_drop_down_outlined),
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newvalue) {
                    setState(() {
                      dropdownvalue = newvalue!;
                    });
                  },
                ),
                Spacer(),
                Icon(Icons.favorite_sharp),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.search_outlined),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  VerticalCard(
                    image: "assets/vertical.jpeg",
                    label: "New In",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  VerticalCard(
                    image: "assets/vertical1.jpeg",
                    label: "Clothing",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  VerticalCard(
                    image: "assets/vertical2.jpeg",
                    label: "Shoes",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  VerticalCard(
                    image: "assets/vertical3.jpeg",
                    label: "Accessories",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class VerticalCard extends StatelessWidget {
  final String image;
  final String label;
  const VerticalCard({
    super.key,
    required this.image,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const WomensCatogery()),
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.black),
          height: 180,
          child: Stack(children: [
            Row(
              children: [
                Expanded(
                  child: Image.asset(
                    image,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  label,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
