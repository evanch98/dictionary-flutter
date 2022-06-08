import 'package:flutter/material.dart';
import 'package:dictionary_flutter/utilities/constants.dart';
import 'package:dictionary_flutter/utilities/meaning_card.dart';
import 'package:audioplayers/audioplayers.dart';

class WordPage extends StatefulWidget {
  final dynamic wordData;

  const WordPage({Key? key, required this.wordData}) : super(key: key);

  @override
  State<WordPage> createState() => _WordPageState();
}

class _WordPageState extends State<WordPage> {
  late String searchedWord;
  late String phonetic;
  late String audioString;
  late List<dynamic> meanings;
  AudioPlayer audioPlayer = AudioPlayer();

  void getWordData(dynamic wordData) {
    try {
      if (wordData['title'] != null) {
        searchedWord = wordData['title'];
        phonetic = wordData['message'];
        meanings = [];
        return;
      }
    } catch (error) {
      print(error);
    }
    var wordInfo = wordData[0];
    searchedWord = wordInfo['word'];
    phonetic = wordInfo['phonetic'];
    int phoneticsLength = wordInfo['phonetics'].length;
    audioString = wordInfo['phonetics'][phoneticsLength - 1]['audio'];
    meanings = wordInfo['meanings'];
  }

  List<Widget> getMeaningCard() {
    List<Widget> meaningCards = [];
    if (meanings.isEmpty) {
      return meaningCards;
    }
    for (int i = 0; i < meanings.length; i++) {
      var definitions = meanings[i];
      String partOfSpeech = definitions['partOfSpeech'];
      List<dynamic> allDefinitions = definitions['definitions'];
      for (int i = 0; i < allDefinitions.length; i++) {
        String meaning = allDefinitions[i]['definition'];
        String example = allDefinitions[i]['example'] ?? '';
        meaningCards.add(
          MeaningCard(
            partOfSpeech: partOfSpeech,
            meaning: meaning,
            example: example,
          ),
        );
      }
    }
    return meaningCards;
  }

  void play() async {
    int result = await audioPlayer.play(audioString);
    if (result == 1) {
      print('success');
    }
  }

  @override
  void initState() {
    super.initState();
    getWordData(widget.wordData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(searchedWord),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    searchedWord,
                    style: kSearchedWordTextStyle,
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    onPressed: () {
                      play();
                    },
                    child: const Icon(
                      Icons.volume_up,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                phonetic,
                style: kPhoneticTextStyle,
              ),
              Column(
                children: getMeaningCard(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
