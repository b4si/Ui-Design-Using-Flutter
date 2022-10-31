import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  final videoURL = "https://youtu.be/FY4kYTDL67g";

  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videoURL);
    _controller = YoutubePlayerController(
      initialVideoId: videoID!,
      flags: const YoutubePlayerFlags(autoPlay: false),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_sharp),
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 50),
          child: Text('Dukaan Premium'),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 110,
                    color: Colors.blue,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 13),
                    child: SizedBox(
                      width: 350,
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: const Image(
                                image: AssetImage('assets\\dukaan.png')),
                          )),
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 270, top: 10),
                child: Text(
                  'Features',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: ListTile(
                  leading: Image(
                    image: AssetImage(
                      'assets\\globe.png',
                    ),
                  ),
                  title: Text('Custom domain name'),
                  subtitle: Text(
                    'Get your own custom domain and build your brand on the internet.',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8),
                child: ListTile(
                  leading: Image(
                    image: AssetImage(
                      'assets\\Tick.png',
                    ),
                  ),
                  title: Text('Verified seller badge'),
                  subtitle: Text(
                    'Get green Verified badge under your \nstore name and build trust.',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8),
                child: ListTile(
                  leading: Image(
                    image: AssetImage(
                      'assets\\computer.png',
                    ),
                  ),
                  title: Text('Dukaan for PC'),
                  subtitle: Text(
                    'Access all the exclusive premium \nfeatures on Dukaan for PC.',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8),
                child: ListTile(
                  leading: Image(
                    image: AssetImage(
                      'assets\\earphone.png',
                    ),
                  ),
                  title: Text('Priority support'),
                  subtitle: Text(
                    'Get your questions resolved with our priority customer support.',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(
                  thickness: 4,
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 160, 0),
                child: const Text(
                  'What is Dukaan Premium?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: SizedBox(
                  height: 190,
                  width: 360,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: YoutubePlayer(
                        controller: _controller,
                        showVideoProgressIndicator: true,
                        bottomActions: [
                          CurrentPosition(),
                          ProgressBar(
                            isExpanded: true,
                            colors: const ProgressBarColors(
                                playedColor: Colors.green,
                                handleColor: Colors.greenAccent),
                          ),
                          const PlaybackSpeedButton(),
                          FullScreenButton(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 135),
                      child: Text(
                        "Frequently asked questions",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    ListTile(
                      title: const Text(
                          'What types of businesses can use Dukaan Premium?'),
                      trailing: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.minimize)),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 6, left: 14, right: 14),
                      child: Text(
                        'Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their product/services online - Dukaan is the perfect platform for you.',
                        style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5, right: 14, left: 14),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    ListTile(
                      title: const Text('What is your refund policy'),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 14, left: 14),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    ListTile(
                      title: const Text(
                          'Will there be an automatic charge after the paid trial?'),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 14, left: 14),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    ListTile(
                      title: const Text('What payment methods do you offer?'),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 14, left: 14),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    ListTile(
                      title:
                          const Text('What happens when my free trial ends?'),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 14, left: 14),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    ListTile(
                      title: const Text(
                          'What are the terms for the custom domain?'),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                      ),
                    ),
                    const Divider(thickness: 3),
                    const Padding(
                      padding: EdgeInsets.only(top: 8, right: 170),
                      child: Text(
                        'Need Help? Get in touch',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 80,
                            width: 180,
                            child: OutlinedButton.icon(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.message_outlined,
                                size: 40,
                                color: Colors.black,
                              ),
                              label: const Text(
                                'Live Chat',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                            width: 180,
                            child: OutlinedButton.icon(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.phone,
                                  size: 40,
                                  color: Colors.black,
                                ),
                                label: const Text(
                                  'Phone Call',
                                  style: TextStyle(color: Colors.black),
                                )),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Divider(
                        thickness: 2,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 180,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                side: const BorderSide(
                                    color: Colors.transparent)),
                            onPressed: () {},
                            child: const Text(
                              'Select Domain',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: 180,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                'Get premium',
                                style: TextStyle(fontSize: 17),
                              )),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
