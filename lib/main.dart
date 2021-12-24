import 'package:flutter/material.dart';
import 'Pagina_Principal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Avenir'),
      home: MyHomePage(),
      routes: {
        '/mainPage': (context) => MainPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffff5722),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    "Aprendizaje OnLine",
                    style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.w900, height: 1),
                  ),
                ),
                Container(
                  child: Text(
                    "no es la siguiente",
                    style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.w500, height: 1),
                  ),
                ),
                Container(
                  child: Text(
                    "gran cosa,",
                    style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.w900, height: 1),
                  ),
                ),
                Container(
                  child: Text(
                    "ahora es la",
                    style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.w500, height: 1),
                  ),
                ),
                Container(
                  child: Text(
                    "GRAN COSA,",
                    style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.w900, height: 1),
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.bottomCenter,
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/image/educacion-en-linea.png'), fit: BoxFit.cover)),
              ),
              Positioned(
                bottom: 50,
                left: 0,
                right: 0,
                child: Center(
                  child: InkWell(
                    onTap: () {
                      openMainPage();
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      child: Text(
                        'Continuar..',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  void openMainPage() {
    Navigator.pushNamed(context, '/mainPage');
  }
}
