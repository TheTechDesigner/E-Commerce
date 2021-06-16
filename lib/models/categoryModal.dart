class CategoryModal {
  String image;
  String category;
  int discount;

  CategoryModal({this.image, this.category, this.discount});

  CategoryModal.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    category = json['category'];
    discount = json['discount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['category'] = this.category;
    data['discount'] = this.discount;
    return data;
  }
}