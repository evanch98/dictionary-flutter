import 'package:dictionary_flutter/services/networking.dart';

const freeDictionaryURL = 'https://api.dictionaryapi.dev/api/v2/entries/en';

class WordData {
  Future<dynamic> getWordMeaning(String word) async {
    var url = '$freeDictionaryURL/$word';
    Networking networking = Networking(url);
    var wordMeaning = await networking.getData();
    return wordMeaning;
  }
}
