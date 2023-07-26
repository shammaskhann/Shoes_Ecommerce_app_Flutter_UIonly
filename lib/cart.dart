import 'package:flutter/material.dart';

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
          ),
        ),
      ],
    ));
  }
}
