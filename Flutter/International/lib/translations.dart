import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Translations {
  Translations(this.locale);

  late Map<String, String> _sentences;
  final Locale locale;

  static Translations? of(BuildContext context) {
    return Localizations.of<Translations>(context, Translations);
  }

  Future<bool> load() async {
    String data = await rootBundle.loadString('assets/locale/${locale.languageCode}.json'); // 경로 유의
    Map<String, dynamic> result = json.decode(data);

    _sentences = {};
    result.forEach((String key, dynamic value) {
      _sentences[key] = value.toString();
    });

    return true;
  }

  String? trans(String key) {
    return _sentences[key];
  }
}