class Customer {
  final String id_customer;
  final String name_customer;
  final String phone_customer;
  final String address_customer;
  final String email_customer;

  Customer({
    required this.id_customer,
    required this.name_customer,
    required this.phone_customer,
    required this.address_customer,
    required this.email_customer,
  });

  factory Customer.fromJson(Map<String, dynamic> json) {
    return Customer(
      id_customer: json['id_customer'],
      name_customer: json['name_customer'],
      phone_customer: json['phone_customer'],
      address_customer: json['address_customer'],
      email_customer: json['email_customer'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id_customer': id_customer,
      'name_customer': name_customer,
      'phone_customer': phone_customer,
      'address_customer': address_customer,
      'email_customer': email_customer,
    };
  }
}
