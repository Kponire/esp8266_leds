// ignore_for_file: import_of_legacy_library_into_null_safe

import 'dart:async';
import 'dart:io';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:highlight_text/highlight_text.dart';

/*
late BuildContext scaffoldContext;

displaySnackBar(BuildContext context, String msg) {
  final snackBar = SnackBar(
    content: Text(msg),
    action: SnackBarAction(
      label: 'Ok',
      onPressed: () {},
    ),
  );
  Scaffold.of(scaffoldContext).showSnackBar(snackBar);
} */
Future<void> onLED()
async {
  int timeout = 10;
  try {
    http.Response response = await http.get('http://192.168.43.7/5/on').
    timeout(Duration(seconds: timeout));
    if (response.statusCode == 200) {
      Fluttertoast.showToast(
        msg: "LED ONE ON",
        toastLength: Toast.LENGTH_LONG,
        fontSize: 20,
        backgroundColor: Colors.green,
      );
      // do something
    } else {
      Fluttertoast.showToast(
        msg: "Can't connect!!",
        toastLength: Toast.LENGTH_LONG,
        fontSize: 20,
        backgroundColor: Colors.green,
      );
      // handle it
    }
  } on TimeoutException catch (e) {
    Fluttertoast.showToast(
      msg: "Taking too long to connect!!",
      toastLength: Toast.LENGTH_LONG,
      fontSize: 20,
      backgroundColor: Colors.green,
    );
    // ignore: avoid_print
    print('Timeout Error: $e');
  } on SocketException catch (e) {
    // ignore: avoid_print
    print('Socket Error: $e');
  } on Error catch (e) {
    Fluttertoast.showToast(
      msg: "Can't connect!",
      toastLength: Toast.LENGTH_LONG,
      fontSize: 20,
      backgroundColor: Colors.green,
    );
  }
 // displaySnackBar(context, 'Module Not Connected');
}

Future<void> offLED()
async {
  int timeout = 10;
  try {
    http.Response response = await http.get('http://192.168.43.7/5/off').
    timeout(Duration(seconds: timeout));
    if (response.statusCode == 200) {
      Fluttertoast.showToast(
        msg: "LED ONE OFF",
        toastLength: Toast.LENGTH_LONG,
        fontSize: 20,
        backgroundColor: Colors.green,
      );
      // do something
    } else {
      Fluttertoast.showToast(
        msg: "Can't connect!!",
        toastLength: Toast.LENGTH_LONG,
        fontSize: 20,
        backgroundColor: Colors.green,
      );
      // handle it
    }
  } on TimeoutException catch (e) {
    Fluttertoast.showToast(
      msg: "Taking too long to connect!!",
      toastLength: Toast.LENGTH_LONG,
      fontSize: 20,
      backgroundColor: Colors.green,
    );
    // ignore: avoid_print
    print('Timeout Error: $e');
  } on SocketException catch (e) {
    // ignore: avoid_print
    print('Socket Error: $e');
  } on Error catch (e) {
    Fluttertoast.showToast(
      msg: "Can't connect!",
      toastLength: Toast.LENGTH_LONG,
      fontSize: 20,
      backgroundColor: Colors.green,
    );
  }
}

Future<void> onLED1()
async {
  int timeout = 10;
  try {
    http.Response response = await http.get('http://192.168.43.7/4/on').
    timeout(Duration(seconds: timeout));
    if (response.statusCode == 200) {
      Fluttertoast.showToast(
        msg: "LED TWO ON",
        toastLength: Toast.LENGTH_LONG,
        fontSize: 20,
        backgroundColor: Colors.green,
      );
      // do something
    } else {
      Fluttertoast.showToast(
        msg: "Can't connect!!",
        toastLength: Toast.LENGTH_LONG,
        fontSize: 20,
        backgroundColor: Colors.green,
      );
      // handle it
    }
  } on TimeoutException catch (e) {
    Fluttertoast.showToast(
      msg: "Taking too long to connect!!",
      toastLength: Toast.LENGTH_LONG,
      fontSize: 20,
      backgroundColor: Colors.green,
    );
    // ignore: avoid_print
    print('Timeout Error: $e');
  } on SocketException catch (e) {
    // ignore: avoid_print
    print('Socket Error: $e');
  } on Error catch (e) {
    Fluttertoast.showToast(
      msg: "Can't connect!",
      toastLength: Toast.LENGTH_LONG,
      fontSize: 20,
      backgroundColor: Colors.green,
    );
  }
  // displaySnackBar(context, 'Module Not Connected');
}

Future<void> offLED1()
async {
  int timeout = 10;
  try {
    http.Response response = await http.get('http://192.168.43.7/4/off').
    timeout(Duration(seconds: timeout));
    if (response.statusCode == 200) {
      Fluttertoast.showToast(
        msg: "LED TWO OFF",
        toastLength: Toast.LENGTH_LONG,
        fontSize: 20,
        backgroundColor: Colors.green,
      );
      // do something
    } else {
      Fluttertoast.showToast(
        msg: "Can't connect!!",
        toastLength: Toast.LENGTH_LONG,
        fontSize: 20,
        backgroundColor: Colors.green,
      );
      // handle it
    }
  } on TimeoutException catch (e) {
    Fluttertoast.showToast(
      msg: "Taking too long to connect!!",
      toastLength: Toast.LENGTH_LONG,
      fontSize: 20,
      backgroundColor: Colors.green,
    );
    // ignore: avoid_print
    print('Timeout Error: $e');
  } on SocketException catch (e) {
    // ignore: avoid_print
    print('Socket Error: $e');
  } on Error catch (e) {
    Fluttertoast.showToast(
      msg: "Can't connect!",
      toastLength: Toast.LENGTH_LONG,
      fontSize: 20,
      backgroundColor: Colors.green,
    );
  }
}
void main() => runApp(const MyApp());

class MyApp extends StatefulWidget
{
  const MyApp({Key? key}):super(key:key);

  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  final Map<String, HighlightedWord> _highlights = {
    'onLED1': HighlightedWord(
      // ignore: avoid_print
      onTap: () => print('onLED1'),
      textStyle: const TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.bold,
      ),
    ),
    'offLED1': HighlightedWord(
      // ignore: avoid_print
      onTap: () => print('offLED1'),
      textStyle: const TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.bold,
      ),
    ),
    'onLED2': HighlightedWord(
      onTap: () => print('onLED2'),
      textStyle: const TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.bold,
      ),
    ),
    'offLED2': HighlightedWord(
      onTap: () => print('offLED2'),
      textStyle: const TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.bold,
      ),
    ),
  };

  late stt.SpeechToText _speech;
  bool _isListening = false;
  String _text = 'Press the button and start speaking';
  double _confidence = 1.0;
  bool isSwitched = false;
  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
  }
  var textValue = "Led two is off";
  void toggleSwitch(bool value){
    if(isSwitched == false){
      setState(() {
        isSwitched = true;
        http.get('http://192.168.43.7/4/on');
        textValue = "Led two is on";
      });
    }
    else{
      setState(() {
        isSwitched = false;
          http.get('http://192.168.43.7/4/off');
        textValue = "Led two is off";
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    bool isListening = false;
    String text = 'Press the button and start speaking';
    return MaterialApp(
      title: 'Kuponiyi Led control',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Kuponiyi Led control'),
          backgroundColor: Colors.teal,
        ),
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: <Widget>[
            // ignore: avoid_unnecessary_containers
            Container(
              child: const Text(
                "Kuponiyi Control system for Led one and two",
                style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),

            Container(
              height: 10,
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: ElevatedButton.icon(onPressed: onLED,
                icon: const Icon(Icons.highlight), label: const Text(
                  'TURN ON LED 1',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),),
            ),

            Container(
              height: 10,
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: ElevatedButton.icon(onPressed: offLED,
                icon: const Icon(Icons.light), label: const Text(
                  'TURN OFF LED 1',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),),
            ),
            Container(
              height: 20,
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: ElevatedButton.icon(onPressed: onLED1,
                icon: const Icon(Icons.highlight), label: const Text(
                  'TURN ON LED 2',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),),
            ),

            Container(
              height: 10,
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: ElevatedButton.icon(onPressed: offLED1,
                icon: const Icon(Icons.light), label: const Text(
                  'TURN OFF LED 2',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    textValue,
                  style: const TextStyle(
                    color: Colors.indigoAccent,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic
                  ),
                ),
              Switch(
                focusColor: Colors.pink,
                onChanged: toggleSwitch,
                value: isSwitched,
                activeColor: Colors.blue[900],
                activeTrackColor: Colors.yellow,
                inactiveThumbColor: Colors.redAccent,
                inactiveTrackColor: Colors.orange,
                autofocus: true,
              ),
              ],
            ),
            const SizedBox(height: 10,),
            Container(
              //  padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 150.0),
              child: TextHighlight(
                text: text == '' ? "listening.." : text,
                words: _highlights,
                textStyle: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: AvatarGlow(
          animate: isListening,
          glowColor: Theme.of(context).primaryColor,
          endRadius: 75.0,
          duration: const Duration(milliseconds: 2000),
          repeatPauseDuration: const Duration(milliseconds: 100),
          repeat: true,
          child: FloatingActionButton(
            //onPressed: isConnected ? _listen : null,
            onPressed: (){_listen;},
            child: Icon(isListening ? Icons.mic : Icons.mic_none),
          ),
        ),
      ),
    );
  }
  void _listen() async {
    if (!_isListening) {
      bool available = await _speech.initialize(
        // ignore: avoid_print
        onStatus: (val) => print('onStatus: $val'),
        // ignore: avoid_print
        onError: (val) => print('onError: $val'),
      );
      if (available) {
        setState(() => _isListening = true);
        _speech.listen(
          onResult: (val) => setState(() {
            _text = val.recognizedWords;
            if (val.hasConfidenceRating && val.confidence > 0) {
              _confidence = val.confidence;
            }
          }),
        );
      }
    } else {
      setState(() => _isListening = false);
      _speech.stop();
      moveServo();
    }
  }
  void moveServo() {
    if (_text.contains('onLED1')) {
      onLED();
    } else if (_text.contains('onLED2')) {
      onLED1();
    } else if (_text.contains('offLED1')) {
      offLED();
    } else if (_text.contains('offLED2')) {
      offLED1();
    }
  }
}



