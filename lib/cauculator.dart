import 'package:auto_size_text/auto_size_text.dart';
import 'package:cauculator/memory.dart';
import 'package:flutter/material.dart';

class Cauculator extends StatefulWidget {
  @override
  _CauculatorState createState() => _CauculatorState();
}

class _CauculatorState extends State<Cauculator> {
  final memory = Memory();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _buildDisplay(),
          Divider(
            height: 0.2,
          ),
          _buildKeybord(),
        ],
      ),
    );
  }

  _buildDisplay() {
    return Expanded(
      child: Container(
        color: Colors.black,
        child: AutoSizeText(
          memory.result,
          maxLines: 1,
          minFontSize: 20,
          maxFontSize: 80,
          textAlign: TextAlign.end,
          style: TextStyle(fontSize: 80, color: Colors.white),
        ),
      ),
    );
  }

  _buildKeybordButton(String label,
      {Color textColor = Colors.white, int flex = 1,double fontsize = 24}) {
    return Expanded(
        flex: flex,
        child: RaisedButton(
          color: Colors.black,
          textColor: textColor,
          child: Text(
            label,
            style: TextStyle(fontSize: fontsize),
          ),
          onPressed: () {
            setState(() {
              memory.appltComand(label);
            });
          },
        )
      );
  }

  _buildKeybord() {
    return Container(
      height: 400,
      color: Colors.black,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                _buildKeybordButton('AC', textColor: Colors.deepOrange),
                _buildKeybordButton('DEL', textColor: Colors.deepOrange),
                _buildKeybordButton('%', textColor: Colors.deepOrange),
                _buildKeybordButton('/', textColor: Colors.deepOrange),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                _buildKeybordButton('7', textColor: Colors.white),
                _buildKeybordButton('8', textColor: Colors.white),
                _buildKeybordButton('9', textColor: Colors.white),
                _buildKeybordButton('*', textColor: Colors.deepOrange),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                _buildKeybordButton('4', textColor: Colors.white),
                _buildKeybordButton('5', textColor: Colors.white),
                _buildKeybordButton('6', textColor: Colors.white),
                _buildKeybordButton('-', textColor: Colors.deepOrange, fontsize: 40),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                _buildKeybordButton('1', textColor: Colors.white),
                _buildKeybordButton('2', textColor: Colors.white),
                _buildKeybordButton('3', textColor: Colors.white),
                _buildKeybordButton('+', textColor: Colors.deepOrange),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                _buildKeybordButton('0', textColor: Colors.white, flex: 2),
                _buildKeybordButton('.', textColor: Colors.white, fontsize: 26),
                _buildKeybordButton('=', textColor: Colors.deepOrange),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
