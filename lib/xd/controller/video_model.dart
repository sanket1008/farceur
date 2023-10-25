// To parse this JSON data, do
//
//     final videoList = videoListFromJson(jsonString);

import 'dart:convert';

List<String> videoListFromJson(String str) => List<String>.from(json.decode(str).map((x) => x));

String videoListToJson(List<String> data) => json.encode(List<dynamic>.from(data.map((x) => x)));
