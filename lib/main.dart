import 'package:flutter/material.dart';
import 'package:sadis/views/caraguna.dart';
import 'package:sadis/views/habbits.dart';
import 'package:sadis/views/statistik.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Smart System Water Reminder'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          // ini adalah tempat saya meletakkan halaman utama saya
          //
          //
          // halaman ini harus di buat sebaik mungkin
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'aplikasi ini adalah aplikasi dispenser pintar',
              ),
              Text('semoga aplikasi saya ini dapat selesai sebelum deadline')
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              createDrawerHeader(),
              ListTile(
                leading: Icon(Icons.book),
                title: Text('cara penggunaan'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Caraguna()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.graphic_eq),
                title: Text('statistik penggunaan'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Statistik()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.access_alarm_outlined),
                title: Text('set habbits'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Habbits()),
                  );
                },
              ),
            ],
          ),
        ));
  }
}

// drawer header
Widget createDrawerHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage('assets/images/drawer.jpg'))),
      child: Stack(children: <Widget>[
        Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text("Smart Water Reminder",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 21.0,
                    fontWeight: FontWeight.w500))),
      ]));
}
