import 'package:flutter/material.dart';
import '../model/places.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Places> places = [
    Places(name: 'Japan', desc: 'Tokyo', image: 'assets/image/tokyo.jpg'),
    Places(name: 'Sri Lanka', desc: 'Colombo', image: 'assets/image/sri.jpg'),
    Places(name: 'Spain', desc: 'Mallorca', image: 'assets/image/spain.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: places.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(places[index].image),
              ),
              title: Text(places[index].name),
              subtitle: Text(places[index].desc),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/details',
                  arguments: Places(
                    name: places[index].name,
                    desc: places[index].desc,
                    image: places[index].image,
                  ),
                );
              },
            );
          }),
    );
  }
}
