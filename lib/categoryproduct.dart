import 'package:flutter/material.dart';

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
                // mainAxisSpacing: 10,
                // padding: EdgeInsets.symmetric(horizontal: 20),
                children: List.generate(
                  discovery.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12)),
                              // color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    discovery[index]["image"],
                                    fit: BoxFit.fill,
                                    height: 200,
                                    width: 200,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Text(discovery[index]["title"]),
                        Text(discovery[index]["subtitle"]),
                      ],
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
  }
];
