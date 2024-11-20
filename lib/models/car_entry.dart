// To parse this JSON data, do
//
//     final carEntry = carEntryFromJson(jsonString);

import 'dart:convert';

List<CarEntry> carEntryFromJson(String str) => List<CarEntry>.from(json.decode(str).map((x) => CarEntry.fromJson(x)));

String carEntryToJson(List<CarEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CarEntry {
    String model;
    String pk;
    Fields fields;

    CarEntry({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory CarEntry.fromJson(Map<String, dynamic> json) => CarEntry(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String nama;
    String name;
    int price;
    String description;

    Fields({
        required this.user,
        required this.nama,
        required this.name,
        required this.price,
        required this.description,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        nama: json["nama"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "nama": nama,
        "name": name,
        "price": price,
        "description": description,
    };
}
