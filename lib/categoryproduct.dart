import 'package:flutter/material.dart';
import 'package:flutter_application_4/cartpage.dart';

class CategoryProduct extends StatefulWidget {
  const CategoryProduct({super.key});

  @override
  State<CategoryProduct> createState() => _CategoryProductState();
}

class _CategoryProductState extends State<CategoryProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
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
                      "CLOTHING .",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text(
                      "T-SHIRTS",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.code_outlined))
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
            child: GridView.count(
                crossAxisCount: 2,
                // crossAxisSpacing: 10,
                mainAxisSpacing: 30,
                // padding: EdgeInsets.symmetric(horizontal: 20),
                children: List.generate(
                  discovery.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CartPage()),
                        );
                      },
                      child: SizedBox(
                        height: 500,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                discovery[index]["image"],
                                fit: BoxFit.cover,
                                height: 152,
                                width: 150,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              discovery[index]["title"],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.currency_rupee_outlined,
                                  color: Colors.grey,
                                  size: 16,
                                ),
                                Text(
                                  discovery[index]["subtitle"],
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}

List<Map<String, dynamic>> discovery = [
  {
    "title": "V-neck T-shirt",
    "subtitle": "30",
    "image": "assets/vertical.jpeg"
  },
  {
    "title": "American armholes",
    "subtitle": "28",
    "image": "assets/gridimage.jpg"
  },
  {
    "title": "Ramones T-shirt",
    "subtitle": "26",
    "image": "assets/gridimage1.jpeg"
  },
  {
    "title": "Snoopy T-shirt",
    "subtitle": "40",
    "image": "assets/gridimage2.jpeg"
  },
  {
    "title": "Printed T-shirt",
    "subtitle": "32",
    "image": "assets/gridimage3.jpeg"
  },
  {
    "title": "Scooby T-shirt",
    "subtitle": "34",
    "image": "assets/gridimage4.jpeg"
  },
  {
    "title": "Western T-shirt",
    "subtitle": "36",
    "image": "assets/gridimage5.jpeg"
  },
  {
    "title": "Gypsy T-shirt",
    "subtitle": "38",
    "image": "assets/gridimage6.jpeg"
  },
  {
    "title": "Cossak T-shirt",
    "subtitle": "42",
    "image": "assets/gridimage7.jpeg"
  },
  {
    "title": "Sailor T-shirt",
    "subtitle": "44",
    "image": "assets/gridimage8.jpeg"
  }
];
