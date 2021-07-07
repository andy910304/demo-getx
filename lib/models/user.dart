class User {
  late final int id;
  late final String email;
  late final String firstname;
  late final String lastname;
  late final String avatar;
  User({
    required this.id,
    required this.email,
    required this.firstname,
    required this.lastname,
    required this.avatar,
  });

  static User fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      email: json['email'],
      firstname: json['firstname'],
      lastname: json['lastname'],
      avatar: json['avatar'],
    );
  }
}
