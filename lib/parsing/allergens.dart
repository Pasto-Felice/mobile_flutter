class Allergens {
  final int id;
  final String name;
  final String foundIn;

  const Allergens({
    required this.id,
    required this.name,
    required this.foundIn,
  });

  factory Allergens.fromJson(Map<String, dynamic> json) {
    return Allergens(
      id: json['id'] as int,
      name: json['name'] as String,
      foundIn: json['foundIn'] as String
    );
  }
}