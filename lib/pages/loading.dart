import 'package:flutter/material.dart';
import '../services/newsapi.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  String categoryName;

  Loading({Key key, this.categoryName}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState(categoryName);
}

class _LoadingState extends State<Loading> {
  _LoadingState(this.categoryName);

  List data;
  String categoryName;

  void getNews() async {
    print(categoryName);
    NewsApi apiData = NewsApi();
    if (categoryName != null) {
      await apiData.getCategoryNews(categoryName);
      this.data = apiData.data['articles'];
      Navigator.pushNamed(context, '/news', arguments: data);
    } else {
      await apiData.getNews();
      this.data = apiData.data['articles'];
      Navigator.pushNamed(context, '/news', arguments: data);
    }
  }

  @override
  void initState() {
    getNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[900],
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SpinKitSquareCircle(
              color: Colors.white,
              size: 66.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                'Loading..',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            )
          ]),
        ));
  }
}
