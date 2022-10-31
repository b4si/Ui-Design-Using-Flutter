import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  bool val1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: const Text('Additional information'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text('Share Dhukan App'),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_ios),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.textsms_outlined),
            title: const Text('Change Language'),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_ios),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.whatsapp),
            title: const Text('WhatsApp Chat Support'),
            trailing: Switch(
              value: val1,
              onChanged: (value) {
                setState(() {
                  val1 = value;
                });
              },
            ),
          ),
          const ListTile(
            leading: Icon(Icons.lock_outline_sharp),
            title: Text('Privacy Policy'),
          ),
          const ListTile(
            leading: Icon(Icons.star_border),
            title: Text('Rate Us'),
          ),
          const ListTile(
            leading: Icon(Icons.logout_outlined),
            title: Text('Sign Out'),
          ),
          const SizedBox(
            height: 310,
          ),
          const Center(
            child: Text('Version'),
          ),
          const Center(
            child: Text('2.4.2'),
          )
        ],
      ),
    );
  }
}
