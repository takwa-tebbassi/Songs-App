// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
//import 'package:just_audio/just_audio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Songs App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 208, 154, 255)),
      ),
      home: const MyHomePage(title: 'Pick a singer to hear a song'),
    );
  }
}

//audio player
final AudioPlayer audioPlayer = AudioPlayer();
//final AudioPlayer justAudioPlayer = AudioPlayer(); //backup

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

   Future<void> _pause() async {
    await audioPlayer.stop();
   }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
      ),

      body: Center(
        child: SingleChildScrollView(
          child: 
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: [
            GestureDetector(
              onTap: () async {
                try {
                  await audioPlayer.play(AssetSource("2step.mp3"));
                } catch (e) {
                  print("Error playing audio: $e");
                }
              },
               child: Container(
                  height: 150,
                  width: 250,
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/Ed_Sheeran.jpg',
                      width: 250,
                      height: 150,
                      fit: BoxFit.cover, 
                    ),
                  ),
              ),
            ),
            GestureDetector(
              onTap: () async {
                try {
                  await audioPlayer.play(AssetSource("Mockingbird.mp3"));
                } catch(e) {
                  print("error playing audio: $e");
                }
              },
             child: Container(
    height: 150,
    width: 250,
    margin: EdgeInsets.symmetric(horizontal: 20.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 4,
          offset: Offset(2, 2),
        ),
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        'assets/eminem.jpg',
        width: 250,
        height: 150,
        fit: BoxFit.cover,
      ),
    ),
            ),
            ),
            GestureDetector (
              onTap: () async {
                try {
                  await audioPlayer.play(AssetSource("In_The_Stars.mp3"));
                } catch(e) {
                  print("erroor playing audio: $e");
                }
              },
             child: Container(
    height: 150,
    width: 250,
    margin: EdgeInsets.symmetric(horizontal: 20.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 4,
          offset: Offset(2, 2),
        ),
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        'assets/Benson-Boone.jpg',
        width: 250,
        height: 150,
        fit: BoxFit.cover, 
      ),
    ),
            ),
            ),
            GestureDetector(
              onTap: () async {
                try {
                  await audioPlayer.play(AssetSource("Vienna.mp3"));
                } catch(e) {
                  print("error playing audio: $e");
                }
              },
               child: Container(
    height: 150,
    width: 250,
    margin: EdgeInsets.symmetric(horizontal: 20.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 4,
          offset: Offset(2, 2),
        ),
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        'assets/BillyJoel.jpg',
        width: 250,
        height: 150,
        fit: BoxFit.cover, 
      ),
    ),
            ),
            ),
            GestureDetector(
              onTap: () async {
                try {
                  await audioPlayer.play(AssetSource("Eastside.mp3"));
                } catch(e) {
                  print("error playing audio: $e");
                }
              },
                   child: Container(
    height: 150,
    width: 250,
    margin: EdgeInsets.symmetric(horizontal: 20.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 4,
          offset: Offset(2, 2),
        ),
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        'assets/Eastside.jpg',
        width: 250,
        height: 150,
        fit: BoxFit.cover, 
      ),
    ),
            ),
            ),
            GestureDetector(
              onTap: () async {
                try {
                  await audioPlayer.play(AssetSource("Ado 風のゆくえ.mp3"));
                } catch(e) {
                  print("error playing audio: $e");
                }
              },
                       child: Container(
    height: 150,
    width: 250,
    margin: EdgeInsets.symmetric(horizontal: 20.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 4,
          offset: Offset(2, 2),
        ),
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        'assets/ado.jpg',
        width: 250,
        height: 150,
        fit: BoxFit.cover, 
      ),
    ),
            ),
            ),
            GestureDetector(
              onTap: () async {
                try {
                  await audioPlayer.play(AssetSource("2002.mp3"));
                } catch(e) {
                  print("error playing audio: $e");
                }
              },
             child: Container(
    height: 150,
    width: 250,
    margin: EdgeInsets.symmetric(horizontal: 20.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 4,
          offset: Offset(2, 2),
        ),
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        'assets/ed_Sheeran_anne_marie.jpg',
        width: 250,
        height: 150,
        fit: BoxFit.cover, 
      ),
    ),
            ),
            ),
            GestureDetector(
              onTap: () async {
                try {
                  await audioPlayer.play(AssetSource("Bad_Liar.mp3"));
                } catch(e) {
                  print("error playing audio: $e");
                }
              },
             child: Container(
    height: 150,
    width: 250,
    margin: EdgeInsets.symmetric(horizontal: 20.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 4,
          offset: Offset(2, 2),
        ),
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        'assets/imagine-dragons.jpg',
        width: 250,
        height: 150,
        fit: BoxFit.cover,
      ),
    ),
            ),
            ),
            GestureDetector(
              onTap: () async {
                try {
                  await audioPlayer.play(AssetSource("The_Way_I_Loved_You.mp3"));
                } catch(e) {
                  print("error playing audio: $e");
                }
              },
             child: Container(
    height: 150,
    width: 250,
    margin: EdgeInsets.symmetric(horizontal: 20.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 4,
          offset: Offset(2, 2),
        ),
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        'assets/taylor_swift.jpeg',
        width: 250,
        height: 150,
        fit: BoxFit.cover, 
      ),
    ),
            ),
            ),
            GestureDetector(
              onTap: () async {
                try {
                  await audioPlayer.play(AssetSource("love_someone.mp3"));
                } catch(e) {
                  print("error playing audio: $e");
                }
              },
                   child: Container(
                    height: 150,
                    width: 250,
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'assets/lukas_graham.jpg',
                        width: 250,
                        height: 150,
                        fit: BoxFit.cover, 
                      ),
                    ),
            ),
            ),
            GestureDetector(
              onTap: () async {
                try {
                  await audioPlayer.play(AssetSource("Carrousel.mp3"));
                } catch(e) {
                  print("error playing audio: $e");
                }
              },
                   child: Container(
                    height: 150,
                    width: 250,
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'assets/amir_indila.jpg',
                        width: 250,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
            ),
            ),
            GestureDetector(
              onTap: () async {
                try {
                  await audioPlayer.play(AssetSource("Stand by me, Stand by you.mp3"));
                } catch(e) {
                  print("error playing audio: $e");
                }
              },
                   child: Container(
                    height: 150,
                    width: 250,
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'assets/Dai Hirai.jpg',
                        width: 250,
                        height: 150,
                        fit: BoxFit.cover, 
                      ),
                    ),
            ),
            ),
          ],
        )
      ),
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: _pause,
        tooltip: 'Stop',
        child: const Icon(Icons.stop),
      ),
    );
  }
}
