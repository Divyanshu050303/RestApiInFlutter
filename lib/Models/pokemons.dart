class Pokemon {
  final String name;
  final String imageUrl;
  final int height;
  final int weight;
  List type;
  List Move;

  Pokemon({required this.name, required this.imageUrl, required this.height, required this.weight, required this.type, required this.Move});

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      name: json['name'],
      imageUrl: json['sprites']['front_default'],
      height:json['height'],
      weight: json['weight'],
      type:json['types'],
      Move:json['moves']
    );
  }
}