import 'package:burc_rehberi/burc_detay.dart';
import 'package:burc_rehberi/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcListesi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burç Rehberi"),
      ),
      body: ListView.builder(
        itemCount: Strings.BURC_ADLARI.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 20,
              child: ListTile(
                tileColor: Colors.white,
                title: Text(
                  "${Strings.BURC_ADLARI[index]}",
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 26,
                  ),
                ),
                subtitle: Text(
                  "${Strings.BURC_TARIHLERI[index]}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                leading: Image.asset(
                    "images/${(Strings.BURC_ADLARI[index]).toLowerCase()}${index + 1}.png"),
                trailing: Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: Colors.pink,
                ),
                onTap: () {
                  PaletteGenerator paletteGenerator;
                  Future<PaletteGenerator> fPaletGenerator =
                      PaletteGenerator.fromImageProvider(AssetImage(
                          "images/${(Strings.BURC_ADLARI[index]).toLowerCase()}_buyuk${index + 1}.png"));

                  fPaletGenerator.then((value) {
                    paletteGenerator = value;
                   
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BurcDetay(
                                  index: index, renk: paletteGenerator.dominantColor.color,
                                )));
                  });
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
