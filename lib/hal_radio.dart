import 'package:flutter/material.dart';

class Radio extends StatelessWidget {
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
              "RADIO",
              style: TextStyle(fontSize: 30.0),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            // untuk mengambil link gambar dari internet (klik kanan pada gambar - open image in new tab - copy link - paste kan)
            Image(
              image: NetworkImage(
                  "https://tse1.mm.bing.net/th?id=OIP.S6Pii0eFYQRO1FYZzqv7cgHaHF&pid=Api&P=0&h=180"),
              width: 200.0,
            ),
          ],
        ),
      ),
    );
  }
}
