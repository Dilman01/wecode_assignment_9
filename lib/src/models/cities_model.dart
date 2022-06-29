// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Cities {
  final String name;
  final String imgURL;
  final String description;
  Cities({
    required this.name,
    required this.imgURL,
    required this.description,
  });

  Cities copyWith({
    String? name,
    String? imgURL,
    String? description,
  }) {
    return Cities(
      name: name ?? this.name,
      imgURL: imgURL ?? this.imgURL,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'imgURL': imgURL,
      'description': description,
    };
  }

  factory Cities.fromMap(Map<String, dynamic> map) {
    return Cities(
      name: map['name'] ?? '',
      imgURL: map['imgURL'] ?? '',
      description: map['description'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Cities.fromJson(String source) =>
      Cities.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Cities(name: $name, imgURL: $imgURL, description: $description)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Cities &&
        other.name == name &&
        other.imgURL == imgURL &&
        other.description == description;
  }

  @override
  int get hashCode => name.hashCode ^ imgURL.hashCode ^ description.hashCode;
}
