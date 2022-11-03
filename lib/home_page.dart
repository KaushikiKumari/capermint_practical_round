import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

//List of Cards with size
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white24,
        appBar: AppBar(
          title: const Text("Flutter Staggered GridView Demo",
              style: TextStyle(fontSize: 13)),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: AlignedGridView.count(
          // shrinkWrap: true,
          // physics: const NeverScrollableScrollPhysics(),
        itemCount: 14,
          crossAxisCount: 4,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          itemBuilder: (context, index) {
            return Tile(
              index: index,
              extent: (index % 7 + 1) * 30,
            );
          },
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Tile extends StatefulWidget {
  int index;
  double extent;
  Tile({required this.index, required this.extent});

  @override
  State<Tile> createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}
