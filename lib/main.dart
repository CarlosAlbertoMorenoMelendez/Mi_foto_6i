import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi foto 6-I',
      theme: ThemeData(
        // Application theme data, you can set the colors for the application as
        // you want
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Mi foto 6-I'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text(widget.title),
        centerTitle: true,
        actions: [
          Icon(Icons.search),
          Icon(Icons.more_vert)
        ],
        elevation: 8,
        shadowColor: Colors.greenAccent,
        backgroundColor: Colors.lightGreen,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 49),
                child: Container(
                  width: 170,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF1C6613),
                      )
                    ],
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Color(0xFF1C6613),
                      width: 5,
                    ),
                  ),
                  child: Text(
                    '   Moreno Melendez\n      Carlos Alberto',
                  ),
                ),
              ),
              Divider(
                height: 5,
                thickness: 5,
                indent: 120,
                endIndent: 120,
                color: Color(0xFF1C6613),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    border: Border.all(
                      color: Color(0xFF1C6613),
                    ),
                  ),
                  child: Image.network(
                    'https://raw.githubusercontent.com/CarlosAlbertoMorenoMelendez/IMSS_APP/master/assets/images/me.jpg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Divider(
                height: 10,
                thickness: 5,
                indent: 120,
                endIndent: 120,
                color: Color(0xFF1C6613),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                child: Container(
                  width: 200,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF1C6613),
                      )
                    ],
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Color(0xFF1C6613),
                      width: 5,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 11, 0, 0),
                    child: Text(
                      '    6to-I Programacion',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
