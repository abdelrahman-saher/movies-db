class EndPoints {
  static const String baseUrl = 'https://api.themoviedb.org/3/person';
  static const String peopleUrl = '$baseUrl/popular';
  static String peopleInfoUrl(String id) => '$baseUrl/$id';
  static String peopleImagesUrl(String id) => '$baseUrl/$id/images';
}
