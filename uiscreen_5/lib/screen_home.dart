import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 50),
          child: Text('Order #7854125'),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              const ListTile(
                title: Text('May 31, 05:32 PM'),
                trailing: Text('Delivered'),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 13, right: 13),
                child: Divider(
                  thickness: 1,
                ),
              ),
              ListTile(
                leading: const Text(
                  '1 ITEM',
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.receipt),
                  label: const Text('RECEIPT'),
                  style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.transparent)),
                ),
              ),
              const ListTile(
                leading: Image(
                  image: AssetImage('assets\\dress.png'),
                ),
                title: Text('Explore | Men | Navy blue'),
                subtitle: Text('1 piece \nSize: XL'),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: Container(
                      decoration: BoxDecoration(border: Border.all()),
                      height: 18,
                      width: 18,
                      child: const Center(
                        child: Text(
                          '1',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                  const Text(' x ₹799'),
                  const Padding(
                    padding: EdgeInsets.only(left: 190),
                    child: Text('₹799'),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(
                  thickness: 1,
                ),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text('Item Total'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 270),
                    child: Text('₹799'),
                  ),
                ],
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 11, top: 15),
                    child: Text('Delivery'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 285, top: 15),
                    child: Text(
                      'FREE',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 11, top: 15),
                    child: Text(
                      'Grand Total',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 260, top: 15),
                    child: Text(
                      '₹799',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const Divider(
                thickness: 1,
              ),
              ListTile(
                leading: Text(
                  'CUSTOMER DETAILS',
                  style: TextStyle(color: Colors.grey[600]),
                ),
                trailing: OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.share),
                  label: const Text('Share'),
                  style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.transparent)),
                ),
              ),
              ListTile(
                title: const Text(
                  'Deepa',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text('+91-7829000484'),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.whatsapp,
                    color: Colors.green,
                  ),
                ),
              ),
              const ListTile(
                title: Text(
                  'Address',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle:
                    Text('d 1101 Chartered Beverly \nHills, Subramanya P.O'),
              ),
              ListTile(
                title: const Text('City',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: const Text('Banglore'),
                trailing: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: const [
                      Text('Pincode',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('676123'),
                    ],
                  ),
                ),
              ),
              ListTile(
                title: const Text(
                  'Payment',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text('Online'),
                trailing: Container(
                  height: 20,
                  width: 50,
                  decoration: BoxDecoration(color: Colors.green[100]),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10, top: 2),
                    child: Text(
                      'PAID',
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 175, top: 6),
                child: Text(
                  'ADDITIONAL INFORMATION',
                  style: TextStyle(color: Colors.grey[600], fontSize: 15),
                ),
              ),
              const ListTile(
                title: Text(
                  'State',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle:
                    Text('Karnataka', style: TextStyle(color: Colors.black)),
              ),
              const ListTile(
                title: Text(
                  'Email',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'greeneinch@gmail.com',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(
                height: 50,
                width: 380,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.blue)),
                  child: const Text('Share receipt'),
                ),
              ),
              const SizedBox(
                height: 5,
              )
            ],
          ),
        ],
      ),
    );
  }
}
