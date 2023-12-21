/// id : 1048
/// brand : "colourpop"
/// name : "Lippie Pencil"
/// price : "5.0"
/// price_sign : "$"
/// currency : "CAD"
/// image_link : "https://cdn.shopify.com/s/files/1/1338/0845/collections/lippie-pencil_grande.jpg?v=1512588769"
/// product_link : "https://colourpop.com/collections/lippie-pencil"
/// website_link : "https://colourpop.com"
/// description : "Lippie Pencil A long-wearing and high-intensity lip pencil that glides on easily and prevents feathering. Many of our Lippie Stix have a coordinating Lippie Pencil designed to compliment it perfectly, but feel free to mix and match!"
/// rating : null
/// category : "pencil"
/// product_type : "lip_liner"
/// tag_list : ["cruelty free","Vegan"]
/// created_at : "2018-07-08T23:45:08.056Z"
/// updated_at : "2018-07-09T00:53:23.301Z"
/// product_api_url : "https://makeup-api.herokuapp.com/api/v1/products/1048.json"
/// api_featured_image : "//s3.amazonaws.com/donovanbailey/products/api_featured_images/000/001/048/original/open-uri20180708-4-13okqci?1531093614"
/// product_colors : [{"hex_value":"#B28378","colour_name":"BFF Pencil"},{"hex_value":"#A36B5E","colour_name":"951 Pencil"},{"hex_value":"#966A60","colour_name":"Beeper Pencil"},{"hex_value":"#8F5954","colour_name":"Oh Snap Pencil"},{"hex_value":"#975348","colour_name":"Curvii Pencil"},{"hex_value":"#865B69","colour_name":"Lumiere Pencil"},{"hex_value":"#8E474D","colour_name":"Bumble Pencil"},{"hex_value":"#5F2820","colour_name":"BFF Pencil 3"},{"hex_value":"#C095BC","colour_name":"Brills Pencil"},{"hex_value":"#743A6A","colour_name":"Are N Be Pencil"},{"hex_value":"#965564","colour_name":"Contempo Pencil"},{"hex_value":"#BF2C7E","colour_name":"Heart On Pencil"},{"hex_value":"#CE435D","colour_name":"Trixie Pencil"},{"hex_value":"#DA6952","colour_name":"Chi Chi Pencil"},{"hex_value":"#A33C37","colour_name":"Clique Pencil"},{"hex_value":"#C23D3C","colour_name":"Frenchie Pencil"},{"hex_value":"#AF4051","colour_name":"Bossy Pencil"},{"hex_value":"#914B4C","colour_name":"Wild Nothing Pencil"},{"hex_value":"#6D414B","colour_name":"Dopey Pencil"},{"hex_value":"#4D2D28","colour_name":"Toolips Pencil"},{"hex_value":"#361927","colour_name":"Mamacita Pencil"},{"hex_value":"#714B41","colour_name":"Pitch Pencil"},{"hex_value":"#762F50","colour_name":"LBB Pencil"},{"hex_value":"#8C4A47","colour_name":"Love Bug Pencil"},{"hex_value":"#702E2D","colour_name":"Poison Pencil"},{"hex_value":"#93283C","colour_name":"Bichette Pencil"},{"hex_value":"#653E44","colour_name":"Dukes Pencil"},{"hex_value":"#5C3357","colour_name":"Leather Pencil"},{"hex_value":"#242225","colour_name":"Bull Chic Pencil"},{"hex_value":"#B5716A","colour_name":"Brink Pencil"},{"hex_value":"#B0516F","colour_name":"I Heart This Pencil"},{"hex_value":"#542328","colour_name":"Ellarie Pencil"},{"hex_value":"#DFAC9B","colour_name":"Toy Pencil"},{"hex_value":"#AB7164","colour_name":"BFF Pencil 2"}]

class Makeup {
  Makeup({
      num? id, 
      String? brand, 
      String? name, 
      String? price, 
      String? priceSign, 
      String? currency, 
      String? imageLink, 
      String? productLink, 
      String? websiteLink, 
      String? description, 
      dynamic rating, 
      String? category, 
      String? productType, 
      List<String>? tagList, 
      String? createdAt, 
      String? updatedAt, 
      String? productApiUrl, 
      String? apiFeaturedImage, 
      List<ProductColors>? productColors,}){
    _id = id;
    _brand = brand;
    _name = name;
    _price = price;
    _priceSign = priceSign;
    _currency = currency;
    _imageLink = imageLink;
    _productLink = productLink;
    _websiteLink = websiteLink;
    _description = description;
    _rating = rating;
    _category = category;
    _productType = productType;
    _tagList = tagList;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _productApiUrl = productApiUrl;
    _apiFeaturedImage = apiFeaturedImage;
    _productColors = productColors;
}

  Makeup.fromJson(dynamic json) {
    _id = json['id'];
    _brand = json['brand'];
    _name = json['name'];
    _price = json['price'];
    _priceSign = json['price_sign'];
    _currency = json['currency'];
    _imageLink = json['image_link'];
    _productLink = json['product_link'];
    _websiteLink = json['website_link'];
    _description = json['description'];
    _rating = json['rating'];
    _category = json['category'];
    _productType = json['product_type'];
    _tagList = json['tag_list'] != null ? json['tag_list'].cast<String>() : [];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _productApiUrl = json['product_api_url'];
    _apiFeaturedImage = json['api_featured_image'];
    if (json['product_colors'] != null) {
      _productColors = [];
      json['product_colors'].forEach((v) {
        _productColors?.add(ProductColors.fromJson(v));
      });
    }
  }
  num? _id;
  String? _brand;
  String? _name;
  String? _price;
  String? _priceSign;
  String? _currency;
  String? _imageLink;
  String? _productLink;
  String? _websiteLink;
  String? _description;
  dynamic _rating;
  String? _category;
  String? _productType;
  List<String>? _tagList;
  String? _createdAt;
  String? _updatedAt;
  String? _productApiUrl;
  String? _apiFeaturedImage;
  List<ProductColors>? _productColors;
Makeup copyWith({  num? id,
  String? brand,
  String? name,
  String? price,
  String? priceSign,
  String? currency,
  String? imageLink,
  String? productLink,
  String? websiteLink,
  String? description,
  dynamic rating,
  String? category,
  String? productType,
  List<String>? tagList,
  String? createdAt,
  String? updatedAt,
  String? productApiUrl,
  String? apiFeaturedImage,
  List<ProductColors>? productColors,
}) => Makeup(  id: id ?? _id,
  brand: brand ?? _brand,
  name: name ?? _name,
  price: price ?? _price,
  priceSign: priceSign ?? _priceSign,
  currency: currency ?? _currency,
  imageLink: imageLink ?? _imageLink,
  productLink: productLink ?? _productLink,
  websiteLink: websiteLink ?? _websiteLink,
  description: description ?? _description,
  rating: rating ?? _rating,
  category: category ?? _category,
  productType: productType ?? _productType,
  tagList: tagList ?? _tagList,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  productApiUrl: productApiUrl ?? _productApiUrl,
  apiFeaturedImage: apiFeaturedImage ?? _apiFeaturedImage,
  productColors: productColors ?? _productColors,
);
  num? get id => _id;
  String? get brand => _brand;
  String? get name => _name;
  String? get price => _price;
  String? get priceSign => _priceSign;
  String? get currency => _currency;
  String? get imageLink => _imageLink;
  String? get productLink => _productLink;
  String? get websiteLink => _websiteLink;
  String? get description => _description;
  dynamic get rating => _rating;
  String? get category => _category;
  String? get productType => _productType;
  List<String>? get tagList => _tagList;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get productApiUrl => _productApiUrl;
  String? get apiFeaturedImage => _apiFeaturedImage;
  List<ProductColors>? get productColors => _productColors;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['brand'] = _brand;
    map['name'] = _name;
    map['price'] = _price;
    map['price_sign'] = _priceSign;
    map['currency'] = _currency;
    map['image_link'] = _imageLink;
    map['product_link'] = _productLink;
    map['website_link'] = _websiteLink;
    map['description'] = _description;
    map['rating'] = _rating;
    map['category'] = _category;
    map['product_type'] = _productType;
    map['tag_list'] = _tagList;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['product_api_url'] = _productApiUrl;
    map['api_featured_image'] = _apiFeaturedImage;
    if (_productColors != null) {
      map['product_colors'] = _productColors?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// hex_value : "#B28378"
/// colour_name : "BFF Pencil"

class ProductColors {
  ProductColors({
      String? hexValue, 
      String? colourName,}){
    _hexValue = hexValue;
    _colourName = colourName;
}

  ProductColors.fromJson(dynamic json) {
    _hexValue = json['hex_value'];
    _colourName = json['colour_name'];
  }
  String? _hexValue;
  String? _colourName;
ProductColors copyWith({  String? hexValue,
  String? colourName,
}) => ProductColors(  hexValue: hexValue ?? _hexValue,
  colourName: colourName ?? _colourName,
);
  String? get hexValue => _hexValue;
  String? get colourName => _colourName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['hex_value'] = _hexValue;
    map['colour_name'] = _colourName;
    return map;
  }

}