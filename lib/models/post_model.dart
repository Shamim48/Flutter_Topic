class PostModel {
  final int? id;
  final int? userId;
  final String? title;
  final String? body;

  PostModel({ this.id,  this.userId,  this.title,  this.body});

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['id'],
      userId: json['userId'],
      title: json['title'] ?? "",
      body: json['body'] ?? "",
    );
  }
}