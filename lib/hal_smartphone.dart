import 'package:flutter/material.dart';

class SmartPhone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Text(
              "SmartPhone",
              style: TextStyle(fontSize: 30.0),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
             // untuk mengambil link gambar dari internet (klik kanan pada gambar - open image in new tab - copy link - paste kan)
            Image(
              image: NetworkImage(
                "https://tse4.mm.bing.net/th?id=OIP.wofTWOodifysAosb2n8tNgHaEK&pid=Api&P=0&h=180",
              ),
              width: 200.0,
            ),
          ],
        ),
      ),
    );
  }
}
