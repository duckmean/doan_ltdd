class User {
  final int id;
  late String name;
  final String email;
  late int quizzcoin;
  late int vip;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.quizzcoin,
    required this.vip,
  });
  User.fromJson(Map<String, dynamic> r)
      : id = r['id'],
        name = r['name'],
        email = r['email'],
        quizzcoin = r['quizzcoin'],
        vip = r['vip'];

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'name': name,
      'email ': email,
      'quizzcoin': quizzcoin,
      'vip ': vip,
    };
  }
}
