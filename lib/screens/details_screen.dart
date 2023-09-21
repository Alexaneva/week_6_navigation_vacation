import 'package:flutter/material.dart';
import 'package:week_6_navigation_vacation/model/places.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var argument = ModalRoute.of(context)?.settings.arguments as Places;
    return Scaffold(
      appBar: AppBar(
        title: Text(argument.name),
      ),
      body: Column(
        children: [
          Hero(
              tag: argument.name,
              child: Image(
                image: AssetImage(argument.image),
              )),
          Container(
            padding: const EdgeInsets.all(8),
            child: Text(argument.desc),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back))
        ],
      ),
    );
  }
}
