class Login_model {
  Login_model({
    required this.id,
    required this.userId,
    required this.title,
    required this.completed
  });
  int id;
  int userId;
  String title;
  bool completed;

  Login_model.fromJson(Map json)
      : id = json['id'],
        userId = json['userId'],
        title = json['title'],
        completed = json['completed'];

  Map toJson() {
    return {'id': id, 'userId': userId, 'title': title, 'completed': completed};
  }
}