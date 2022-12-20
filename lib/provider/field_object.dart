class FieldQuestion {
  int id;
  String tenlinhvuc;
  FieldQuestion({required this.id, required this.tenlinhvuc});
  static FieldQuestion fromJson(Map<String, dynamic> json) => FieldQuestion(
        id: json['id'],
        tenlinhvuc: json['tenlinhvuc'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'tenlinhvuc': tenlinhvuc,
      };
}
