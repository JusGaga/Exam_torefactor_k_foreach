class Field {
  String id;
  String name;
  String specialty;
  String photoUrl;
  String userId;

  Field({
    required this.id,
    required this.name,
    required this.specialty,
    required this.photoUrl,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'specialty': specialty,
      'photoUrl': photoUrl,
      'userId': userId,
    };
  }

  factory Field.fromMap(Map<String, dynamic> map) {
    return Field(
      id: map['id'],
      name: map['name'],
      specialty: map['specialty'],
      photoUrl: map['photoUrl'],
      userId: map['userId'],
    );
  }
}
