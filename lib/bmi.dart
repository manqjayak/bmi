import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'bmi_result.dart';
import 'aboutme.dart';

class InputBMI extends StatefulWidget {
  @override
  _InputBMIState createState() => _InputBMIState();
}

class _InputBMIState extends State<InputBMI> {
  int tinggi = 0;
  int berat = 0;
  String nama = '';
  String dropdownValue;
  String tanggal;
  String bulan;
  String tahun;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue[50],
      appBar: AppBar(
        //backgroundColor: Colors.blue[900],
        centerTitle: true,

        title: Text('MENGHITUNG BMI'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.contacts),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Aboutme()));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSAWRad_jU-V75vE2s96EMuly6VZbrl67dKSJ49h6H_moYSji4F',
                fit: BoxFit.fitWidth,
                height: 160,
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            nama = txt;
                          });
                        },
                        decoration:
                            InputDecoration(filled: true, hintText: 'Nama'),
                      ),
                    ),
                  ],
                )),
            Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Container(
                      color: Colors.grey[200],
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: dropdownValue,
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        hint: new Text(" Jenis-Kelamin"),
                        underline: Container(
                          height: 1,
                          color: Colors.black,
                        ),
                        items: <String>['Laki-laki', 'Perempuan']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                )),
            Container(
                // color: Colors.blue[700],
                child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    onChanged: (txt) {
                      setState(() {
                        tanggal = txt;
                      });
                    },
                    keyboardType: TextInputType.number,
                    maxLength: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    decoration:
                        InputDecoration(filled: true, hintText: 'tanggal'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    onChanged: (txt) {
                      setState(() {
                        bulan = txt;
                      });
                    },
                    keyboardType: TextInputType.number,
                    maxLength: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    decoration:
                        InputDecoration(filled: true, hintText: 'Bulan'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    onChanged: (txt) {
                      setState(() {
                        tahun = txt;
                      });
                    },
                    keyboardType: TextInputType.number,
                    maxLength: 4,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    decoration:
                        InputDecoration(filled: true, hintText: 'Tahun'),
                  ),
                ),
              ],
            )),
            Container(
                // color: Colors.blue[700],
                child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    onChanged: (txt) {
                      setState(() {
                        tinggi = int.parse(txt);
                      });
                    },
                    keyboardType: TextInputType.number,
                    maxLength: 3,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                        suffix: Text('cm'), filled: true, hintText: 'Tinggi'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    onChanged: (txt) {
                      setState(() {
                        berat = int.parse(txt);
                      });
                    },
                    keyboardType: TextInputType.number,
                    maxLength: 3,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                        suffix: Text('kg'), filled: true, hintText: 'Berat'),
                  ),
                ),
              ],
            )),
            Container(
              //height: double.infinity,
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BMIResult(
                            tinggi_badan: tinggi,
                            berat_badan: berat,
                            nama: nama,
                            kelamin: dropdownValue,
                            tanggal: tanggal,
                            bulan: bulan,
                            tahun: tahun)),
                  );
                },
                padding: EdgeInsets.only(top: 10, bottom: 10),
                color: Colors.white,
                // textColor: Colors.white,
                child: Text(
                  'HITUNG BMI',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        //color: Colors.transparent,
        child: Container(
          height: 60,
          color: Colors.black54,
          alignment: Alignment.center,
          child: Text(
            'Developed by Orang',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
        //elevation: 0,
      ),
    );
  }
}
