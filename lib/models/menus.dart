import 'package:cloud_firestore/cloud_firestore.dart';

class Menus
{
  String? menuID;
  String? sellersUID;
  String? productsID;
  String? productTitle;
  String? productDescription;
  String? status;
  int? productPrice;
  int? productQuantity;
  Timestamp? publishedDate;
  String? thumbnailUrl;
  String? sellersImageUrl;
  String? sellersName;
  String? sellersAddress;
  String? menuTitle;

 Menus
      ({
    this.menuID,
    this.menuTitle,
    this.sellersUID,
    this.productsID,
    this.productTitle,
    this.productDescription,
    this.status,
    this.productPrice,
    this.productQuantity,
    this.publishedDate,
    this.thumbnailUrl,
    this.sellersImageUrl,
    this.sellersName,
    this.sellersAddress,
  });

  Menus.fromJson(Map<String, dynamic> json)
  {
    menuID = json['menuID'];
    menuTitle = json['menuTitle'];
    sellersUID = json['sellersUID'];
    productsID = json['productsID'];
    productTitle= json['productTitle'];
    productDescription= json['productDescription'];
    status = json['status'];
    productPrice = json['productPrice'];
    productQuantity = json['productQuantity'];
    publishedDate = json['publishedDate'];
    thumbnailUrl = json['thumbnailUrl'];
    sellersImageUrl = json['sellersImageUrl'];
    sellersName = json['sellersName'];
    sellersAddress = json['sellersAddress'];
  }


  Map<String, dynamic> toJson()
  {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["menuID"] = this.menuID;
    data["menuTitle"] = this.menuTitle;
    data["sellerUID"] = this.sellersUID;
    data["productsID"] = this.productsID;
    data["productTitle"] = this.productTitle;
    data["productDescription"] = this.productDescription;
    data["productPrice"] = this.productPrice;
    data["productQuantity"] = this.productQuantity;
    data["publishedDate"] = this.publishedDate;
    data["thumbnailUrl"] = this.thumbnailUrl;
    data["status"] = this.status;
    data["sellersImageUrl"] = this.sellersImageUrl;
    data["sellersName"] = this.sellersName;
    data["sellersAddress"] = this.sellersAddress;

    return data;
  }

}