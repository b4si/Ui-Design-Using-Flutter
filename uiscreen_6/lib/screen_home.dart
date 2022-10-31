import 'package:flutter/material.dart';
import 'package:uiscreen_6/assets.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  bool _val1 = true;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Padding(
            padding: EdgeInsets.only(left: 135),
            child: Text('Catalogue'),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Products',
              ),
              Tab(
                text: 'Categories',
              )
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: titleDetails.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 6, top: 5),
              child: SizedBox(
                width: 380,
                height: 160,
                child: Card(
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 9),
                            child: SizedBox(
                              width: 83,
                              height: 83,
                              child: Image(
                                image: AssetImage(listImage[index]),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 279,
                                height: 60,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: ListTile(
                                    title: Text(
                                      titleDetails[index],
                                      style: const TextStyle(fontSize: 17),
                                    ),
                                    subtitle: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(top: 5),
                                          child: Text(
                                            '1 Piece',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Text(
                                            priceDetails[index],
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                          ),
                                        )
                                      ],
                                    ),
                                    trailing: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 100),
                                      child: PopupMenuButton<String>(
                                        itemBuilder: ((context) {
                                          return {'Logout', 'Settings'}
                                              .map((String choice) {
                                            return PopupMenuItem<String>(
                                              value: choice,
                                              child: Text(choice),
                                            );
                                          }).toList();
                                        }),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 279,
                                height: 20,
                                child: ListTile(
                                  leading: const Text(
                                    'In Stock',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                  trailing: Switch(
                                      value: _val1,
                                      onChanged: (value) {
                                        setState(() {
                                          _val1 = value;
                                        });
                                      }),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                      SizedBox(
                        width: 400,
                        height: 30,
                        child: TextButton.icon(
                          style: const ButtonStyle(),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.share,
                            size: 17,
                          ),
                          label: const Text(
                            'Product Share',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
