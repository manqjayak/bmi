import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bmi.dart';

class Aboutme extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => InputBMI()));
            },
          ),
          title: Text("Profil"),
          centerTitle: true,
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image(
                    image: NetworkImage(
                        "https://avatars2.githubusercontent.com/u/50063819?s=400&u=d2ee8dd2a419705e2e32a8520ad5cea181e2524c&v=4"),
                    width: 150,
                    height: 150,
                  ),
                ),
                Text(
                  "Komang Jaya",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    height: 2.0,
                  ),
                ),
                Text(
                  "https://manqjayak.com",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.only(top: 20, right: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ContainIcon(0, "BALI", Icons.home, Colors.black54),
                          ContainIcon(
                              12, "Any", Icons.music_note, Colors.black54),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          ContainIcon(0, "manqjayak", Icons.videogame_asset,
                              Colors.black54),
                          ContainIcon(12, "Male", Icons.wc, Colors.black54),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

//container dari kotak yang berisi icon
class ContainIcon extends StatelessWidget {
  final double atas;
  final String isi;
  final IconData icon;
  final Color warna;
  const ContainIcon(this.atas, this.isi, this.icon, this.warna);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20, top: atas),
        padding: EdgeInsets.only(top: 20),
        width: 130,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
          border: Border.all(
            width: 3,
            color: Colors.black54,
          ),
        ),
        child: Column(
          children: <Widget>[
            Icon(
              icon,
              size: 40,
              color: warna,
            ),
            Container(
              color: Colors.black54,
              margin: EdgeInsets.only(top: 24),
              width: 125,
              height: 30,
              child: TextBox(isi),
            ),
          ],
        ));
  }
}

//untuk text di dalam kotak
class TextBox extends StatelessWidget {
  final String isi;
  const TextBox(this.isi);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        isi,
        style: TextStyle(height: 1.3, fontSize: 18, color: Colors.white),
      ),
    );
  }
}
