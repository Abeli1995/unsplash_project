// class Galary {
//   final String id;
//   final String color;

//   Galary({
//     required this.id,
//     required this.color,
//   });
// }

class Galary {
  String id;
  String description;
  String smallImageUrl;

  Galary({
    required this.id,
    required this.description,
    required this.smallImageUrl,
  });

  // factory Galary.fromJson(Map<String, dynamic> json) {
  //   return Galary(
  //     id: json['id'],
  //     description: json['description'] ?? "",
  //     smallImageUrl: json['urls']['small'],
  //   );
  // }
}
