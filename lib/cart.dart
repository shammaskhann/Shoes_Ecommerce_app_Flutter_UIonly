import 'package:flutter/material.dart';
import 'dart:math' as math;

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
                onPressed: () {}),
            Center(
              child: Text(
                " My Cart",
                style: TextStyle(fontSize: 20, color: Colors.grey.shade800),
              ),
            )
          ],
        ),
        Container(
          height: 150,
          width: MediaQuery.of(context).size.width - 30,
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade500,
                    blurRadius: 5,
                    offset: const Offset(0, 3))
              ]),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Colors.red.shade700,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(
                    "assets/images/shoeCart.png",
                    fit: BoxFit.cover,
                  ),
                  // child: Transform.rotate(
                  //   angle: -math.pi / 4,
                  //   child: Image.asset(
                  //     "assets/images/shoeCart.png",
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 15.0),
                    child: Text("Nike Men's Air Max",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ),
                  Text("Run Flyknit Shoes",
                      style:
                          TextStyle(fontSize: 15, color: Colors.grey.shade800)),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Text("Rs: 2000",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey.shade800,
                              fontWeight: FontWeight.normal)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(
          height: 20,
        ),
        //Promo Box
        Card(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "PROMO CODE",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey.shade500,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Promo Code",
                      hintStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // TODO: Implement the promo code apply functionality.
                  },
                  child: Text(
                    "Apply",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red.shade700,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // Container(
        //     height: 60,
        //     width: MediaQuery.of(context).size.width - 30,
        //     decoration: BoxDecoration(
        //         color: Colors.grey.shade300,
        //         borderRadius: BorderRadius.circular(15),
        //         boxShadow: [
        //           BoxShadow(
        //               color: Colors.grey.shade500,
        //               blurRadius: 5,
        //               offset: const Offset(0, 3))
        //         ]),
        //     child: Row(
        //       children: [
        //         Text(
        //           "  PROMO CODE",
        //           style: TextStyle(
        //               fontSize: 20,
        //               color: Colors.grey.shade500,
        //               fontWeight: FontWeight.bold),
        //         ),
        //         TextField(
        //           decoration: InputDecoration(
        //               border: InputBorder.none,
        //               hintText: "Enter Promo Code",
        //               hintStyle: TextStyle(
        //                   fontSize: 15,
        //                   color: Colors.grey.shade800,
        //                   fontWeight: FontWeight.normal)),
        //         )
        //       ],
        //     )),
        const Divider(
          height: 20,
        ),
        // Total Price Display
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total:",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey.shade800,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Rs: 2000", // TODO: Replace with the actual total price
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey.shade800,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        // Checkout Button
        ElevatedButton(
          onPressed: () {
            // TODO: Implement the checkout functionality.
          },
          child: Text(
            "Checkout",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    ));
  }
}
