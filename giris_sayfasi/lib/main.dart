import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: GirisSayfasi(),
    );
  }
}

class GirisSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Container(
              width: 200.0,
              height: 200.0,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("assets/codepng.png"))),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text("Deneme uygulaması",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 20.0),
            Material(
              borderRadius: BorderRadius.circular(20.0),
              elevation: 20.0,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Mail ile Giriş",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[100],
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Facebook ile Giriş",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Colors.indigo,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Gmail ile Giriş",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 237, 28, 36),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.black,
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.red[200],
                          Colors.blueGrey[200],
                        ]),
                    borderRadius: BorderRadius.circular(20.0)),
                alignment:
                    Alignment.center, // x ve y eksenine göre hizalama yaparız.
                width: MediaQuery.of(context).size.width - 70.0,
                height: 180.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
