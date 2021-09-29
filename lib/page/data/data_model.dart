class Item {
  String id = "";
  String name = "";
  String brand = "";
  String price = "";
  String image = "";

  Item(this.id, this.name, this.brand, this.price, this.image);

  Item.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    brand = json['brand'];
    image = json['image'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.name;
    data['last_name'] = this.brand;
    data['image'] = this.image;
    data['price'] = this.price;
    return data;
  }
}
