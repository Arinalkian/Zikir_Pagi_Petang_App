import 'package:flutter/material.dart';

class ItemZikir extends StatelessWidget {
  String judul;
  String arab;
  String arti;

  ItemZikir(this.judul, this.arab, this.arti);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 8),
          child: Text(
            judul,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.deepOrange,
              fontFamily: 'lexenddeca',
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              fontSize: 20.0,
            ),
          ),
        ),
        Divider(
          color: Colors.transparent,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Text(
            arab,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                fontFamily: 'markazi',
                letterSpacing: 1),
          ),
        ),
        Divider(
          color: Colors.transparent,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Text(
            arti,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'ubuntu2',
                letterSpacing: 1.2),
          ),
        ),
      ],
    );
  }
}
