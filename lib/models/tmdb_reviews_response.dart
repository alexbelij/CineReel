import 'package:json_annotation/json_annotation.dart';

part 'tmdb_reviews_response.g.dart';

@JsonSerializable()
class TMDBReviewsResponse {
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "page")
  int page;
  @JsonKey(name: "results")
  List<TMDBReview> results = new List<TMDBReview>();
  @JsonKey(name: "total_pages")
  int totalPages;
  @JsonKey(name: "total_results")
  int totalResults;

  TMDBReviewsResponse(this.id, this.page, this.results, this.totalResults);

  factory TMDBReviewsResponse.fromJson(Map<String, dynamic> json) =>
      _$TMDBReviewsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TMDBReviewsResponseToJson(this);
}

@JsonSerializable()
class TMDBReview {
  @JsonKey(name: "author")
  String author;
  @JsonKey(name: "content")
  String content;
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "url")
  String url;

  TMDBReview(this.author, this.content, this.id, this.url);

  factory TMDBReview.fromJson(Map<String, dynamic> json) => _$TMDBReviewFromJson(json);

  Map<String, dynamic> toJson() => _$TMDBReviewToJson(this);
}
