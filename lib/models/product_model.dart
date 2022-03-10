// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

ProductModel productModelFromJson(String str) =>
    ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  ProductModel({
    this.id,
    this.pname,
    this.price,
    this.ptype,
  });

  int? id;
  String? pname;
  int? price;
  int? ptype;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json["id"],
        pname: json["pname"],
        price: json["price"],
        ptype: json["ptype"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "pname": pname,
        "price": price,
        "ptype": ptype,
      };

  toList() {}
}
