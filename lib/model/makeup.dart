class Makeup {
  final String displayName;
  final String heroImage;
  final String rating;
  final String targetUrl;

  Makeup(
    {required this.displayName, 
    required this.heroImage, 
    required this.rating, 
    required this.targetUrl});

factory Makeup.fromJson(dynamic json) {
  return Makeup(
    displayName: json['displayName'] as String,
    heroImage: json['heroImage'] as String,
    rating: json['rating'] as String,
    targetUrl: json['targetUrl'] as String);
}
static List<Makeup> makeupFromSnapshot(List snapshot){
  return snapshot.map((data) {
    return Makeup.fromJson(data);
  }).toList();
}
@override
  String toString() {
    return 'Makeup [displayName: $displayName, heroImage: $heroImage, rating: $rating, targerUrl: $targetUrl)';
  }
}