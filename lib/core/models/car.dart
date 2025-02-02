class Car {
  final int id;
  final String type;
  final String color;

  Car({
    required this.id,
    required this.type,
    required this.color,
  });

  // factory Car.fromJson(Map<String,dynamic> json)=> Car(id: json[] type: type, color: color)
}
