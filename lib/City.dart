import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class City extends StatelessWidget {
  City({Key? key}) : super(key: key);

  List items = [
    {
      "id": 1,
      "Image": "assets/Images/shampoo.jpg",
      "Title": "Dove Shampoo",
      "Text2": "\$9.99",
      "icon": Icons.favorite_rounded,
    },
    {
      "id": 2,
      "Image": "assets/Images/clinic_plus shampoo.jpg",
      "Title": "Clinic Plus Shampoo",
      "Text2": "\$10.99",
      "icon": Icons.favorite_rounded,
    },
    {
      "id": 3,
      "Image": "assets/Images/hair_oil_image.jpg",
      "Title": "Hair oil",
      "Text2": "\$15.99",
      "icon": Icons.favorite_rounded,
    },
    {
      "id": 4,
      "Image": "assets/Images/second_hair_oil_image.jpg",
      "Title": "Second hair oil",
      "Text2": "\$12.99",
      "icon": Icons.favorite_rounded,
    },
    {
      "id": 5,
      "Image": "assets/Images/shampoo.jpg",
      "Title": "Dove Shampoo",
      "Text2": "\$20.99",
      "icon": Icons.favorite_rounded,
    },
    {
      "id": 6,
      "Image": "assets/Images/clinic_plus shampoo.jpg",
      "Title": "Clinic Plus Shampoo",
      "Text2": "\$30.99",
      "icon": Icons.favorite_rounded,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey.shade200,
          appBar: AppBar(
            title: Text(
              "Search Product",
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 250,
                        height: 50,
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: "Cleansers",
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                              fillColor: Colors.white,
                              filled: true,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 2.0, color: Colors.white),
                                  borderRadius: BorderRadius.circular(15)),
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              width: 2,
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(15)),
                        child: IconButton(
                            icon: const Icon(
                              CupertinoIcons.slider_horizontal_3,
                              color: Colors.black,
                            ),
                            onPressed: () {}),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Found \n10 Results",
                    textScaleFactor: 1.4,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GridView(
                    shrinkWrap: true,
                    // scrollDirection: Axis.horizontal,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 20,
                            mainAxisExtent: 200),
                    // padding: EdgeInsets.all(10),
                    children: [
                      ...List.generate(
                        items.length,
                        (index) => InkWell(
                          onTap: () {
                            if(items[index]["id"]==1){
                            Navigator.pushNamed(context, '/Product file/');
                          }
                            else {
                              print("object");
                            }
                            },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.asset(
                                      items[index]["Image"],
                                      height: 100,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      items[index]["Title"],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          items[index]["Text2"],
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textScaleFactor: 1.3,
                                        ),
                                        CircleAvatar(
                                          backgroundColor: Colors.black,
                                          minRadius: 15,
                                          child: Icon(
                                            items[index]["icon"],
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ),
                                      ],
                                    )
                                  ]),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
