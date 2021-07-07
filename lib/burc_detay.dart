import 'package:flutter/material.dart';
import 'package:burc_rehberi/utils/strings.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatelessWidget {
  final int index;
  final Color renk;

  const BurcDetay({Key key, this.index, this.renk}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            //title: Text("Sliver App Bar"),
             backgroundColor: renk,
            expandedHeight: 300,
            floating: true,
            pinned: true,

            flexibleSpace: FlexibleSpaceBar(
              title: Text("${Strings.BURC_ADLARI[index]} Burcu Özellikleri"),
              centerTitle: true,
              background: Image.asset(
                "images/${(Strings.BURC_ADLARI[index]).toLowerCase()}_buyuk${index + 1}.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container( 
                color: Colors.white,                       
               
              child: Text("${Strings.BURC_GENEL_OZELLIKLERI[index]}", style: TextStyle(fontSize: 22, color: Colors.black),),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
