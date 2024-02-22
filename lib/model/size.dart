class SizeModel {
  String name;
  String quantity;

  SizeModel({
    required this.name,
    required this.quantity,
  });

  factory SizeModel.fromJson(Map<String, dynamic> json) {
    return SizeModel(
      name: json['name'] ?? '',
      quantity: json['quantity'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'quantity': quantity,
    };
  }
}
