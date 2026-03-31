import 'dart:math';
import "../data/word_lists.dart";

class UsernameGenerator {
  final Random _random = Random();

  String generate() {
    final adj = adjectives[_random.nextInt(adjectives.length)];
    final noun = nouns[_random.nextInt(nouns.length)];
    
    return "$adj$noun";
  }
}