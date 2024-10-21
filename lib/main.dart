import 'package:flutter/material.dart';

import './hal_komputer.dart' as Komputer;
import './hal_radio.dart' as Radio;
import './hal_headset.dart' as Headset;
import './hal_smartphone.dart' as Hp;

void main(){
  runApp(MaterialApp(
    title: "Tab Bar",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

  TabController? controller;

  @override
  void initState() {
    controller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Daftar Elektronik"),
        bottom: TabBar(
          controller: controller,
          tabs: <Widget>[
            Tab(icon: Icon (Icons.computer),text: "komputer",),
            Tab(icon: Icon (Icons.headset),text: "headset",),
            Tab(icon: Icon (Icons.radio),text: "radio",),
            Tab(icon: Icon (Icons.smartphone),text: "smartphone",),
          ],
        ),
      ),
      body: new TabBarView(
          controller: controller,
          children: <Widget>[
            Komputer.Komputer(),
            Headset.Headset(),
            Radio.Radio(),
            Hp.SmartPhone(),
          ],
      ),

      bottomNavigationBar: Material( // untuk yang di bawah menggunakan bottomNavigationBar
        color: Colors.amber,
        child: TabBar(
          controller: controller,
          tabs: <Widget>[
            Tab(icon: Icon (Icons.computer),),
            Tab(icon: Icon (Icons.headset),),
            Tab(icon: Icon (Icons.radio),),
            Tab(icon: Icon (Icons.smartphone),),
          ],
        ),
      ),
    );
  }
}
