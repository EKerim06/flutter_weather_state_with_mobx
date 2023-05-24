import 'dart:convert';

class SehirAdiPref {
  SehirAdiPref({
    required this.name,
  });

  String name;

  factory SehirAdiPref.fromRawJson(String str) =>
      SehirAdiPref.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SehirAdiPref.fromJson(Map<String, dynamic> json) => SehirAdiPref(
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
      };
}
