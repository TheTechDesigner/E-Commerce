class CartModal {
  String image;
  String title;
  String desc;
  double price;
  int quantity;

  CartModal({this.image, this.title, this.desc, this.price, this.quantity});

  CartModal.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    title = json['title'];
    desc = json['desc'];
    price = json['price'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['title'] = this.title;
    data['desc'] = this.desc;
    data['price'] = this.price;
    data['quantity'] = this.quantity;
    return data;
  }
}