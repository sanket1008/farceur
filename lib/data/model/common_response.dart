// To parse this JSON data, do
//
//     final commonResponse = commonResponseFromJson(jsonString);

// CommonResponse<T> commonResponseFromJson(String str) =>
//     CommonResponse.fromJson(json.decode(str));
//
// String commonResponseToJson(CommonResponse data) => json.encode(data.toJson());

class CommonResponse<T> {
  int? statusCode;
  String? message;
  T? data;
  bool? hasNextPage;

  CommonResponse({this.statusCode, this.message, this.data, this.hasNextPage});

  factory CommonResponse.fromJson(
          Map<String, dynamic> json, T Function(dynamic json) fromJsonT) =>
      CommonResponse(
          statusCode: json["statusCode"],
          message: json["message"],
          hasNextPage: json["hasNextPage"],
          data: json['data'] != null ? fromJsonT(json['data']) : null);

  Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "message": message,
        "data": data,
        "hasNextPage": hasNextPage
      };
}
