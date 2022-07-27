class PetsNeedsModel {
  String? imageUrl;
  String? title;

  PetsNeedsModel({this.imageUrl, this.title});

  PetsNeedsModel.fromJson(Map<String, dynamic> json) {
    imageUrl = json['imageUrl'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imageUrl'] = this.imageUrl;
    data['title'] = this.title;
    return data;
  }
}
