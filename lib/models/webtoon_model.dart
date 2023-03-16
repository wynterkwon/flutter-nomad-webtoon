class WebtoonModel {
  late final String title, thumb, id;

  // named constructor
  // WebtoonModel.fromJason(Map<String, dynamic> json)
  //     : title = json['title'],
  //       thumb = json['thumb'],
  //       id = json['id'];

  //unnamed constructor
  // late 필요
  WebtoonModel(Map<String, dynamic> json) {
    title = json['title'];
    thumb = json['thumb'];
    id = json['id'];
  }
}
