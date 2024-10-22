import 'package:flutter/material.dart';

class Headset extends StatelessWidget {
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
              "HEADSET",
              style: TextStyle(fontSize: 30.0),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Image.asset(          //mengambil gambar menggunakan asset yangg di simpan di dalam folder project
              "img/headset.png",
              width: 200.0,
            )
          ],
        ),
      ),
    );
  }
}
