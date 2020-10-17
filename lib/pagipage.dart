import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';

import 'data_zikir.dart';
import 'item_zikir.dart';

class PagiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.deepOrange),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Zikir Pagi',
          style: TextStyle(
              color: Colors.deepOrange,
              fontFamily: 'lexenddeca',
              fontWeight: FontWeight.bold,
              fontSize: 23,
              fontStyle: FontStyle.italic,
              letterSpacing: 2),
        ),
      ),
      backgroundColor: Colors.white,
      body: PageIndicatorContainer(
        child: PageView.builder(
            itemCount: dzikirPagi.length,
            itemBuilder: (context, index) {
              String judul = dzikirPagi[index].judul;
              String arab = dzikirPagi[index].arab;
              String arti = dzikirPagi[index].arti;

              return ItemZikir(judul, arab, arti);
            }),
        length: 22,
        align: IndicatorAlign.top,
        indicatorSpace: 3.0,
        padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
        indicatorColor: Colors.deepOrange,
        indicatorSelectorColor: Colors.black54,
        shape: IndicatorShape.roundRectangleShape(
            size: Size.square(12), cornerSize: Size.square(3)),
      ),
    );
  }
}
