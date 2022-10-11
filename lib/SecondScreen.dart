import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Shopping Bag",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                  ),
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(
                  Icons.shopping_bag,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/Images/shampoo.jpg",
                      height: 80,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    // mainAxisSize:   MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dove Shampoo",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textScaleFactor: 1.4,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "\$10.99",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textScaleFactor: 1.2,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    minRadius: 10,
                    child: Icon(
                      Icons.remove,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "02",
                    textScaleFactor: 1.3,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    minRadius: 8,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/Images/second_hair_oil_image.jpg",
                      height: 80,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    // mainAxisSize:   MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Second hair oil",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textScaleFactor: 1.4,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "\$12.99",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textScaleFactor: 1.2,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    minRadius: 10,
                    child: Icon(Icons.remove),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "01",
                    textScaleFactor: 1.3,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    minRadius: 8,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Row(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/Images/hair_oil_image.jpg",
                        height: 80,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      // mainAxisSize:   MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hair oil",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textScaleFactor: 1.4,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "\$15.99",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textScaleFactor: 1.2,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                      width: 120,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      minRadius: 10,
                      child: Icon(Icons.remove),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "01",
                      textScaleFactor: 1.3,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      minRadius: 8,
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    )
                  ]),
              SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 1, color: Colors.white)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Promo Code",
                      style: TextStyle(color: Colors.grey),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black)),
                      onPressed: () {},
                      child: Text(
                        "Apply",
                        style: TextStyle(color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Subtotal",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                      textScaleFactor: 1.3,
                    ),
                    Text(
                      "\$45.99",
                      textScaleFactor: 1.3,
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.black),
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                endIndent: 12,
                indent: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shipping",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                      textScaleFactor: 1.3,
                    ),
                    Text(
                      "\$4.99",
                      textScaleFactor: 1.3,
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.black),
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                endIndent: 12,
                indent: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Bag total",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                      textScaleFactor: 1.3,
                    ),
                    Text(
                      "\$50.98",
                      textScaleFactor: 1.3,
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.black),
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                endIndent: 12,
                indent: 12,
              ),SizedBox(height: 20,),
              TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(horizontal: 70,vertical: 20),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35))
                  ),
                  child: Text(
                    "Proceed to checkout",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ))
            ],
          ),
        )),
      ),
    );
  }
}
