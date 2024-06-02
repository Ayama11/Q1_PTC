import 'dart:convert';

import 'package:faker/src/faker.dart';
import 'package:flutter/services.dart';

getCategories() {
  List<String> items = [];
  for (int i = 0; i < 1000; i++) {
    items.add(faker.lorem.words(3).join(' '));
  }
  return items;
}

getVenues() {
  List<String> items = [];
  for (int i = 0; i < 1000; i++) {
    items.add(faker.lorem.words(2).join(' '));
  }
  return items;
}

getLanguages() async {
  List<String> items;
  var filePath = [
    "Afrikaans",
    "Albanian",
    "Amharic",
    "Arabic",
    "Armenian",
    "Azerbaijani",
    "Basque",
    "Belarusian",
    "Bengali",
    "Bosnian",
    "Bulgarian",
    "Catalan",
    "Cebuano",
    "Chichewa",
    "Chinese (Simplified)",
    "Chinese (Traditional)",
    "Corsican",
    "Croatian",
    "Czech",
    "Danish",
    "Dutch",
    "English",
    "Esperanto",
    "Estonian",
    "Filipino",
    "Finnish",
    "French",
    "Frisian",
    "Galician",
    "Georgian",
    "German",
    "Greek",
    "Gujarati",
    "Haitian Creole",
    "Hausa",
    "Hawaiian",
    "Hebrew",
    "Hindi",
    "Hmong",
    "Hungarian",
    "Icelandic",
    "Igbo",
    "Indonesian",
    "Irish",
    "Italian",
    "Japanese"
  ];
  var jsonString = await rootBundle.loadString(filePath as String);
  items = await json.decode(jsonString);
  return items;
}
