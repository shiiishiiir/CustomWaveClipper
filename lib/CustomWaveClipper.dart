import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class MyWaveClipper extends StatelessWidget {
  const MyWaveClipper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Wave Clipper"),
        ),
        body: Container(
          child: Stack(
            children: <Widget>[
              Opacity(
                opacity: 0.5,
                child: ClipPath(
                  clipper: WaveClipperTwo(),
                  child: Container(
                    color: Colors.redAccent,
                    height: 200,
                  ),
                ),
              ),
              ClipPath(
                clipper: WaveClipperTwo(),
                child: Container(
                  color: Colors.red,
                  height: 180,
                  alignment: Alignment.center,
                  child: Text(
                    "Waving Clipper Bro!",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
