class Car {
  final String id_car;
  final String model_car;
  final String license_plate;
  final String owner_customer;

  Car({
    required this.id_car,
    required this.model_car,
    required this.license_plate,
    required this.owner_customer,
  });

  factory Car.fromJson(Map<String, dynamic> json) {
    return Car(
      id_car: json['id_car'],
      model_car: json['model_car'],
      license_plate: json['license_plate'],
      owner_customer: json['owner_customer'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id_car': id_car,
      'model_car': model_car,
      'license_plate': license_plate,
      'owner_customer': owner_customer,
    };
  }
}
