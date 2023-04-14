import 'dart:convert';

class User {
  final String? name;
  final String? phone;
  final String? email;
  final String? lifeStory;
  final String? password;
  final num? salary;

  User(
      {required this.email,
      this.lifeStory,
      required this.name,
      required this.phone,
      required this.password,
      required this.salary});

  Map<String, dynamic> _toJson() {
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'life_story': lifeStory,
      'salary': salary,
      'password': password
    };
  }

  factory User.fromJson({required String jsonUser}) {
    dynamic user = jsonDecode(jsonUser);

    return User(
        name: user['name'],
        email: user['email'],
        phone: user['phone'],
        password: user['password'],
        salary: user['salary'],
        lifeStory: user['life_story']);
  }

  String toJson() => jsonEncode(_toJson());

  @override
  String toString() {
    return _toJson().toString();
  }
}
