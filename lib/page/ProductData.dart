class ProductData {
  String? id;
  String? name;
  String? brand;
  String? price;
  String? image;
  String? desription;

  ProductData(
      this.id, this.name, this.brand, this.price, this.image, this.desription);

  ProductData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    brand = json['brand'];
    image = json['image'];
    price = json['price'];
    desription = json['desription'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['brand'] = this.brand;
    data['image'] = this.image;
    data['price'] = this.price;
    data['desription'] = this.desription;
    return data;
  }
}
