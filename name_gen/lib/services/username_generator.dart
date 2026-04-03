import 'dart:math';
import "../data/word_lists.dart";

class UsernameGenerator {
  String generate() {
    final r = Random();
    final first = wordlist[r.nextInt(wordlist.length)];
    final second = wordlist[r.nextInt(wordlist.length)];
    return first +
        second; // TODO: camelCase, PascalCase, erikoismerkit, 
  }
}
