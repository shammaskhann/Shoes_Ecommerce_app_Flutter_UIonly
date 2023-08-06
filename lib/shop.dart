import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  State<Shop> createState() => _shopState();
}

class _shopState extends State<Shop> {
  bool selec = false;
  @override
  Widget build(BuildContext context) {
    theme:
    ThemeData(
        textTheme: const TextTheme(
      displayLarge: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline),
      displayMedium: TextStyle(color: Colors.red),
      displaySmall: TextStyle(color: Colors.red),
    ));
    return Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                children: [
                  IconButton(
                    hoverColor: Colors.red,
                    iconSize: 30,
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const SizedBox(
                    width: 300,
                    height: 50,
                    child: TextField(
                      cursorColor: Color.fromARGB(255, 0, 0, 0),
                      style: TextStyle(color: Color.fromARGB(255, 5, 5, 5)),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        // focusColor: Colors.red,
                        // hoverColor: Colors.red,
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.grey),
                        suffixIcon: Icon(Icons.search),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.red),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //Top Banner
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Padding(
                //   padding:
                //       const EdgeInsets.only(left: 15.0, top: 25.0, bottom: 10),
                Container(
                  height: 150,
                  width: 360,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("20% Discount",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          const Text("on your first purchase",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black)),
                          const SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: const Center(
                                child: Text("Shop Now",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                        ],
                      ),
                             Image.asset('assets/images/banner.png', scale: 4,),
                          // Container(
                          //   height: 150,
                          //   width: 150,
                          //   decoration: const BoxDecoration(
                          //     image: DecorationImage(
                          //       image: AssetImage('assets/images/banner.png'),
                          //       fit: BoxFit.cover,
                          //     ),
                          //   ),
                          // ),

                    ],
                  ),
                ),
              ],
            ),
            // Categories Vertical Divider
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _mainPageHeading("Categories"),
                const InkWell(
                  onTap: null,
                  child: Padding(
                    padding: EdgeInsets.only(left: 200.0, top: 15),
                    child: Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(144, 101, 101, 101)),
                    ),
                  ),
                ),
              ],
            ),
            //Categories
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _categoryCard('All'),
                  _categoryCard('Nike'),
                  _categoryCard('Adidas'),
                  _categoryCard('Reebook'),
                  _categoryCard('Puma'),
                  _categoryCard('Armour'),
                  _categoryCard('Others'),
                ],
              ),
            ),
            //Best Selling Vertical Divider
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _mainPageHeading("Best Selling"),
                const InkWell(
                  onTap: null,
                  child: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(144, 101, 101, 101)),
                    ),
                  ),
                ),
              ],
            ),
            //Best Selling List View
            Container(
              height: 370,
              width: 400,
              child: CustomScrollView(
                shrinkWrap: true,
                slivers: [
                  SliverGrid(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return _bestSellingCard(
                            'Nike Air Max 270', 2000, 'Nike');
                      },
                      childCount: 8,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white //Color.fromARGB(255, 238, 238, 238),
        );
  }
}

Widget _categoryCard(String title) {
  return Padding(
    padding:
        const EdgeInsets.only(top: 5.0, left: 15.0, right: 0.0, bottom: 5.0),
    child: SizedBox(
      height: 45,
      width: 100,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
              side: const BorderSide(color: Color.fromARGB(255, 236, 236, 236)),
            ))),
        onHover: (title) {
          ElevatedButton.styleFrom(backgroundColor: Colors.blue);
          const TextStyle(color: Color.fromARGB(255, 0, 0, 0));
        },
        onPressed: () {},
        child: Text(title,
            style: const TextStyle(
                fontSize: 16,
                fontFamily: 'Nike',
                color: Color.fromARGB(255, 112, 112, 112))),
      ),
    ),
  );
}

Widget _mainPageHeading(String title) {
  return Padding(
    padding: const EdgeInsets.only(left: 15.0, top: 15),
    child: Text(
      title,
      style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    ),
  );
}

Widget _bestSellingCard(String title, double price, String discrip) {
  return Padding(
    padding: const EdgeInsets.only(left: 15.0, top: 15),
    child: SizedBox(
      height: 200,
      width: 150,
      child: Card(
        color: Colors.grey.shade200,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          children: [
            Image.asset('assets/images/shoe1.png'),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 8.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Rs $price',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
