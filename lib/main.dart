import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(Botella());

class Botella extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Estado();
  }
}

class Estado extends State {
  String imagen = 'images/via_lactea.jpg';
  AccelerometerEvent acelerometro;
  AssetsAudioPlayer audio;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Zoom'),
        ),
        body: Center(
            child: Container(
              child: Image.asset(imagen),
            )),
      ), theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    );
  }

  @override
  void initState() {
    super.initState();
    accelerometerEvents.listen((AccelerometerEvent event) {
      setState(() {

        acelerometro = event;
        if (acelerometro.y < 1.25 && acelerometro.y >= 0){
          imagen = 'images/bb.jpg';
        } else if (acelerometro.y < 2.5 && acelerometro.y >= 1.25){
          imagen = 'images/galeana.JPG';
        } else if (acelerometro.y < 3.75 && acelerometro.y >= 2.5){
          imagen = 'images/cdmx.jpg';
        } else if (acelerometro.y < 5.0 && acelerometro.y >= 3.75){
          imagen = 'images/mexico.jpg';
        } else if (acelerometro.y < 6.25 && acelerometro.y >= 5){
          imagen = 'images/america.jpg';
        } else if (acelerometro.y < 7.5 && acelerometro.y >= 6.25){
          imagen = 'images/tierra.jpeg';
        } else if (acelerometro.y < 8.75 && acelerometro.y >= 7.5){
          imagen = 'images/sistema_solar.jpg';
        } else if (acelerometro.y < 10 && acelerometro.y >= 8.75){
          imagen = 'images/via_lactea.jpg';
        }
      });
    });
  }

}
