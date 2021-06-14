import 'dart:convert';

List<Undangan> undanganFromJson(String str) =>
    List<Undangan>.from(json.decode(str).map((x) => Undangan.fromJson(x)));

class Undangan {
  String id;
  String email;
  String nama;
  String statusDatang;
  String foto;

  Undangan({
    required this.id,
    required this.email,
    required this.nama,
    required this.statusDatang,
    required this.foto,
  });

  factory Undangan.fromJson(Map<String, dynamic> json) => Undangan(
        id: json["undangan_id"],
        email: json["email"],
        nama: json["nama"],
        statusDatang: json["status_datang"],
        foto: json["foto"],
      );
  Map<String, dynamic> toJson() => {
        "undangan_id": id,
        "email": email,
        "nama": nama,
        "status_datang": statusDatang,
        "foto": foto,
      };
}
