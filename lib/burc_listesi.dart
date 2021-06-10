import 'package:flutter/material.dart';

class BurcListesi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("-Burçlar-"),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Listenin $index . elemanı"),
            leading: Image.asset("images/akrep8.png"),
          );
        },
      ),
    );
  }
}
