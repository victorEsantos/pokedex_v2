class Pokemon {
  Pokemon(
      {required this.id,
      required this.name,
      required this.imgUrl,
      required this.weight,
      required this.height,
      required this.types});

  final int id;
  final String name;
  final String imgUrl;
  final String weight;
  final String height;
  final String types;

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      id: json['id'],
      name: json['name'],
      imgUrl: json['img'],
      weight: json['weight'],
      height: json['height'],
      types: json['type'].toString(),
    );
  }
}
