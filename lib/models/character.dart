class Character {
  
  final int id;
  final String? name;
  final String? race;
  final String? description;
  final String? image;

  Character({required this.id, this.name, this.race, this.description, this.image});

  
factory Character.fromJsonMap(Map<dynamic,dynamic> json)=>
Character(id: json["id"],
name: json['name'] ?? "No name",
race: json['race'] ?? "No race",
description: json['description'] ?? "No description",
image: json['image'] ?? "No image",
);
}
