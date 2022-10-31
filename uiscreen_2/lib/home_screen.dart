import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Manage Store'),
      ),
      body: Container(
        color: const Color(0xfff4f5f4),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 130,
                    width: 190,
                    child: Card(
                        child: Column(
                      children: const [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(top: 10, left: 10),
                            child: Icon(
                              Icons.volume_up_rounded,
                              color: Colors.orange,
                              size: 40,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 60, top: 10),
                          child: Text(
                            'Marketing \nDesign',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )),
                  ),
                  SizedBox(
                    height: 130,
                    width: 190,
                    child: Card(
                        child: Column(
                      children: const [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(top: 10, left: 10),
                            child: Icon(
                              Icons.monetization_on_outlined,
                              size: 40,
                              color: Color.fromARGB(255, 126, 230, 129),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 70, top: 10),
                          child: Text(
                            'Online \nPayment',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 130,
                      width: 190,
                      child: Card(
                          child: Column(
                        children: const [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(top: 10, left: 10),
                              child: Icon(
                                Icons.discount_outlined,
                                size: 35,
                                color: Colors.amber,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 70, top: 16),
                            child: Text(
                              'Discount \nCoupen',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )),
                    ),
                    SizedBox(
                      height: 130,
                      width: 190,
                      child: Card(
                          child: Column(
                        children: const [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Icon(
                                Icons.account_box_rounded,
                                size: 40,
                                color: Color.fromARGB(255, 31, 160, 33),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 55, top: 10),
                            child: Text(
                              'My \nCustomers',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 130,
                      width: 190,
                      child: Card(
                          child: Column(
                        children: const [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(top: 10, left: 10),
                              child: Icon(
                                Icons.qr_code_2_outlined,
                                size: 40,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 70, top: 10),
                            child: Text(
                              'Store QR \nCode',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )),
                    ),
                    SizedBox(
                      height: 130,
                      width: 190,
                      child: Card(
                          child: Column(
                        children: const [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(top: 10, left: 10),
                              child: Icon(
                                Icons.monetization_on_outlined,
                                size: 40,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 75, top: 10),
                            child: Text(
                              'Extra \nCharges',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: SizedBox(
                        height: 130,
                        width: 190,
                        child: Card(
                            child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top: 10, left: 10),
                                    child: Icon(
                                      Icons.format_align_left,
                                      size: 40,
                                      color: Color.fromARGB(255, 224, 32, 96),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 70, top: 6),
                                    child: SizedBox(
                                      height: 25,
                                      width: 45,
                                      child: Badge(
                                        shape: BadgeShape.square,
                                        borderRadius: BorderRadius.circular(3),
                                        badgeContent:
                                            const Center(child: Text('NEW')),
                                        badgeColor: Colors.green,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 60, top: 10),
                              child: Text(
                                'Marketing \nDesign',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey[500],
          selectedItemColor: Colors.blue,
          backgroundColor: const Color.fromARGB(255, 184, 4, 4),
          currentIndex: _currentSelectedIndex,
          onTap: (newindex) {
            setState(() {
              _currentSelectedIndex = newindex;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: 'Order'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.apps,
                ),
                label: 'Products'),
            BottomNavigationBarItem(
              icon: Icon(Icons.layers_outlined),
              label: 'Manage',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: 'Account')
          ]),
    );
  }
}
