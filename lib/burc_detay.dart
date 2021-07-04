import 'package:flutter/material.dart';
import 'package:burc_rehberi/utils/strings.dart';

class BurcDetay extends StatelessWidget {
  final int index;

  const BurcDetay({Key key, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            //title: Text("Sliver App Bar"),
            // backgroundColor: Colors.red,
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
