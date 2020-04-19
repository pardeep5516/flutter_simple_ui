class Gallery {
  final int totalResults;
  final int page;
  final int perPage;
  final List photos;

  Gallery({this.totalResults, this.page, this.perPage, this.photos});

  factory Gallery.fromJson(Map<String, dynamic> json) {
    return Gallery(
      totalResults: json['total_results'],
      page: json['page'],
      perPage: json['per_page'],
      photos: json['photos'],
    );
  }
}
