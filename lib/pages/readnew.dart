import 'package:flutter/material.dart';

class ReadNew extends StatefulWidget {
  @override
  _ReadNewState createState() => _ReadNewState();
}

class _ReadNewState extends State<ReadNew> {
  Map data;

  void deneme(title) {
    
  }

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.popAndPushNamed(context, '/loading');
          },
          child: Icon(
            Icons.arrow_back,
          ),
        ),
        title: Text('Haber icerigi'),
      ),
      body: Column(
        children: [
          Image.network(data['urlToImage']),
          GestureDetector(
            onTap: () {
              deneme(data['title']);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(data['content'], style: TextStyle(fontSize: 15)),
            ),
          )
        ],
      ),
    );
  }
}
