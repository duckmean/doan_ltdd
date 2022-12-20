class User {
  final int id;
  final String name;
  final String email;
  final int quizzcoin;
  final int vip;

  const User({
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
