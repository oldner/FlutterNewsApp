import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blue[300], Colors.blue[900]]),
        ),
          child: Center(
            child: SafeArea(
              child: Column(
                children: [
                  Image.asset('assets/logo.png', width: 150, height: 250,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Text('Haberler API uygulamasina hosgeldiniz.', 
                    style: TextStyle(fontSize: 30, color: Colors.white),),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 100),
                    child: Text('Haberleri gormek icin lutfen butona tiklayin.', style: TextStyle(color: Colors.red[200], fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Container(
                      width: 400,
                      height: 50,
                      child: FlatButton(
                        color: Colors.blue[200],
                        onPressed: () {
                          Navigator.pushNamed(context, '/loading');
                        },
                        child: Text('Devam et')),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: Text('By HSP', style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
            ),
          ),
      ),
    );
  }
}
