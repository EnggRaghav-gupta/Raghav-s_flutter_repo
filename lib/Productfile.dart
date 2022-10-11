import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Productfiles extends StatelessWidget {
  const Productfiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset("assets/Images/shampoo.jpg"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            CupertinoIcons.square_grid_2x2,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ],
              ),
              Container(
                height: 200,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40)),
                    color: Colors.white),
                child: Column(
                  children: [
                    ListTile(
                      title: Row(
                        children: [
                          const Text(
                            "Facial Cleanser",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 130,
                          ),
                          ...List.generate(
                              5,
                              (index) => const Icon(
                                    Icons.star,
                                    color: Colors.black,
                                    size: 15,
                                  ))
                        ],
                      ),
                      subtitle: Text("Size : 7.80/22Sng"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$9.99",
                            style: TextStyle(fontWeight: FontWeight.w700),
                            textScaleFactor: 1.4,
                          ),
                          SizedBox(width: 35,),
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 2),
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(children: [
                              SizedBox(width: 10,),
                              Icon(
                                Icons.remove,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 10,),
                              Text(
                                "1",
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(width: 10,),
                              Icon(
                                Icons.add,
                                color: Colors.grey,
                              )
                            ]),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, "/second_file/");
                            },
                            child: Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2,
                                  ),
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Text(
                                "Cart",
                                textScaleFactor: 1.2,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
