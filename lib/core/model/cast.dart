import 'dart:convert';

Cast castFromJson(String str) => Cast.fromJson(json.decode(str));

String castToJson(Cast data) => json.encode(data.toJson());

class Cast {
  Cast(
      {required this.name,
      required this.episode,
      required this.overview,
      required this.stars,
      required this.vote_avarage});

  String name;
  int episode;
  String overview;
  double vote_avarage;
  List<Stars> stars;

  factory Cast.fromJson(Map<String, dynamic> json) => Cast(
      name: json['name'],
      episode: json['episode'],
      vote_avarage: json['vote_avarage'],
      stars:
          List<Stars>.from(json['guest_stars'].map((x) => Stars.fromJson(x))),
      overview: json['overview']);

  Map<String, dynamic> toJson() => {
        'name': name,
        'episode': episode,
        'overview': overview,
        'vote_avarage': vote_avarage,
        'stars': List<dynamic>.from(stars.map((x) => x.toJson())),
      };
}

class Stars {
  Stars({required this.character, required this.name, required this.image});

  String character;
  String name;
  String image;

  factory Stars.fromJson(Map<String, dynamic> json) => Stars(
        character: json['character'],
        name: json['name'],
        image: json['profile_path'],
      );

  Map<String, dynamic> toJson() => {
    'character':character,
    'name': name,
    'image': image
  };
}
