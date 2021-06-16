class RecommendedModal {
  String image;
  String title;
  double price;
  double rating;
  int sale;

  RecommendedModal({this.image, this.title, this.price, this.rating, this.sale});

  RecommendedModal.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    title = json['title'];
    price = json['price'];
    rating = json['rating'];
    sale = json['sale'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['title'] = this.title;
    data['price'] = this.price;
    data['rating'] = this.rating;
    data['sale'] = this.sale;
    return data;
  }
}