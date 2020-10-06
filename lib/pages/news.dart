import 'package:flutter/material.dart';
import 'package:haberler_api/services/newsapi.dart';
import 'loading.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  List data;
  String key = '';

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      onTap: () {
                        this.key = 'general';
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>Loading(categoryName: this.key)));
                      },
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.black,
                        ),
                        child: Center(
                            child: Text(
                          'General',
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      onTap: () {
                          this.key = 'sports';
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>Loading(categoryName: this.key)));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.red,
                        ),
                        width: 100,
                        child: Center(
                            child: Text(
                          'Sports',
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      onTap: () {
                        this.key = 'business';
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>Loading(categoryName: this.key)));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.blue,
                        ),
                        width: 100,
                        child: Center(
                            child: Text(
                          'Business',
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      onTap: () {
                        this.key = 'entertainment';
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>Loading(categoryName: this.key)));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.green,
                        ),
                        width: 100,
                        child: Center(
                            child: Text(
                          'Entertainment',
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      onTap: () {
                        this.key = 'health';
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>Loading(categoryName: this.key)));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.pink,
                        ),
                        width: 100,
                        child: Center(
                            child: Text(
                          'Health',
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      onTap: () {
                        this.key = 'science';
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>Loading(categoryName: this.key)));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.cyan,
                        ),
                        width: 100,
                        child: Center(
                            child: Text(
                          'Science',
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      onTap: () {
                        this.key = 'technology';
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>Loading(categoryName: this.key)));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.grey,
                        ),
                        width: 100,
                        child: Center(
                            child: Text(
                          'Technology',
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, int index) {
                    return Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.pushReplacementNamed(
                                    context, '/readnew',
                                    arguments: {
                                      'title': data[index]['title'],
                                      'urlToImage': data[index]['urlToImage'],
                                      'content': data[index]['content']
                                    });
                              },
                              child: Image.network(data[index]['urlToImage'])),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushReplacementNamed(
                                    context, '/readnew',
                                    arguments: {
                                      'title': data[index]['title'],
                                      'urlToImage': data[index]['urlToImage'],
                                      'content': data[index]['content']
                                    });
                              },
                              child: Text(
                                data[index]['title'],
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
