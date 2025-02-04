// To parse this JSON data, do
//
//     final tastestoplate = tastestoplateFromJson(jsonString);

import 'dart:convert';

Tastestoplate tastestoplateFromJson(String str) =>
    Tastestoplate.fromJson(json.decode(str));

String tastestoplateToJson(Tastestoplate data) => json.encode(data.toJson());

class Tastestoplate {
  Tastestoplate({
    this.status,
    this.category,
    this.slider,
    this.productDeal,
    this.bestSeller,
    this.special,
    this.featured,
    this.city,
    this.combo,
    this.cuisine,
    this.serviceCity,
    this.message,
  });

  String? status;
  List<CuisineElement>? category;
  List<Slider>? slider;
  List<Featured>? productDeal;
  List<dynamic>? bestSeller;
  List<Special>? special;
  List<Featured>? featured;
  List<CityElement>? city;
  List<dynamic>? combo;
  List<CuisineElement>? cuisine;
  List<CityElement>? serviceCity;
  String? message;

  factory Tastestoplate.fromJson(Map<String, dynamic> json) => Tastestoplate(
        status: json["status"],
        category: List<CuisineElement>.from(
            json["category"].map((x) => CuisineElement.fromJson(x))),
        slider:
            List<Slider>.from(json["slider"].map((x) => Slider.fromJson(x))),
        productDeal: List<Featured>.from(
            json["product_deal"].map((x) => Featured.fromJson(x))),
        bestSeller: List<dynamic>.from(json["best_seller"].map((x) => x)),
        special:
            List<Special>.from(json["special"].map((x) => Special.fromJson(x))),
        featured: List<Featured>.from(
            json["featured"].map((x) => Featured.fromJson(x))),
        city: List<CityElement>.from(
            json["city"].map((x) => CityElement.fromJson(x))),
        combo: List<dynamic>.from(json["combo"].map((x) => x)),
        cuisine: List<CuisineElement>.from(
            json["cuisine"].map((x) => CuisineElement.fromJson(x))),
        serviceCity: List<CityElement>.from(
            json["service_city"].map((x) => CityElement.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "category": List<dynamic>.from(category!.map((x) => x.toJson())),
        "slider": List<dynamic>.from(slider!.map((x) => x.toJson())),
        "product_deal": List<dynamic>.from(productDeal!.map((x) => x.toJson())),
        "best_seller": List<dynamic>.from(bestSeller!.map((x) => x)),
        "special": List<dynamic>.from(special!.map((x) => x.toJson())),
        "featured": List<dynamic>.from(featured!.map((x) => x.toJson())),
        "city": List<dynamic>.from(city!.map((x) => x.toJson())),
        "combo": List<dynamic>.from(combo!.map((x) => x)),
        "cuisine": List<dynamic>.from(cuisine!.map((x) => x.toJson())),
        "service_city": List<dynamic>.from(serviceCity!.map((x) => x.toJson())),
        "message": message,
      };
}

class CuisineElement {
  CuisineElement({
    this.name,
    this.description,
    this.descriptionAfterContent,
    this.parent,
    this.file,
    this.createdDate,
    this.updateDate,
    this.active,
    this.deleted,
    this.seoTitle,
    this.seoDescription,
    this.seoKeywords,
    this.slugHistory,
    this.id,
    this.slug,
    this.v,
  });

  String? name;
  String? description;
  String? descriptionAfterContent;
  dynamic parent;
  String? file;
  DateTime? createdDate;
  DateTime? updateDate;
  int? active;
  int? deleted;
  String? seoTitle;
  String? seoDescription;
  String? seoKeywords;
  List<String>? slugHistory;
  String? id;
  String? slug;
  int? v;

  factory CuisineElement.fromJson(Map<String, dynamic> json) => CuisineElement(
        name: json["name"],
        description: json["description"],
        descriptionAfterContent: json["description_after_content"],
        parent: json["parent"],
        file: json["file"],
        createdDate: DateTime.parse(json["created_date"]),
        updateDate: DateTime.parse(json["update_date"]),
        active: json["active"],
        deleted: json["deleted"],
        seoTitle: json["seo_title"],
        seoDescription: json["seo_description"],
        seoKeywords: json["seo_keywords"],
        slugHistory: List<String>.from(json["slug_history"].map((x) => x)),
        id: json["_id"],
        slug: json["slug"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "description_after_content": descriptionAfterContent,
        "parent": parent,
        "file": file,
        "created_date": createdDate?.toIso8601String(),
        "update_date": updateDate?.toIso8601String(),
        "active": active,
        "deleted": deleted,
        "seo_title": seoTitle,
        "seo_description": seoDescription,
        "seo_keywords": seoKeywords,
        "slug_history": List<dynamic>.from(slugHistory!.map((x) => x)),
        "_id": id,
        "slug": slug,
        "__v": v,
      };
}

class CityElement {
  CityElement({
    this.name,
    this.description,
    this.descriptionAfterContent,
    this.file,
    this.createdDate,
    this.updateDate,
    this.active,
    this.deleted,
    this.ps,
    this.cod,
    this.state,
    this.file2,
    this.footer,
    this.heading,
    this.subHeading,
    this.footerContent,
    this.seoTitle,
    this.seoDescription,
    this.seoKeywords,
    this.slugHistory,
    this.id,
    this.slug,
    this.v,
  });

  String? name;
  String? description;
  String? descriptionAfterContent;
  String? file;
  DateTime? createdDate;
  DateTime? updateDate;
  int? active;
  int? deleted;
  Ps? ps;
  bool? cod;
  String? state;
  String? file2;
  int? footer;
  String? heading;
  SubHeading? subHeading;
  String? footerContent;
  String? seoTitle;
  String? seoDescription;
  String? seoKeywords;
  List<String>? slugHistory;
  String? id;
  String? slug;
  int? v;

  factory CityElement.fromJson(Map<String, dynamic> json) => CityElement(
        name: json["name"],
        description: json["description"],
        descriptionAfterContent: json["description_after_content"],
        file: json["file"],
        createdDate: DateTime.parse(json["created_date"]),
        updateDate: DateTime.parse(json["update_date"]),
        active: json["active"],
        deleted: json["deleted"],
        ps: psValues.map[json["ps"]],
        cod: json["cod"],
        state: json["state"],
        file2: json["file2"],
        footer: json["footer"],
        heading: json["heading"],
        subHeading: subHeadingValues.map[json["sub_heading"]],
        footerContent: json["footer_content"],
        seoTitle: json["seo_title"],
        seoDescription: json["seo_description"],
        seoKeywords: json["seo_keywords"],
        slugHistory: List<String>.from(json["slug_history"].map((x) => x)),
        id: json["_id"],
        slug: json["slug"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "description_after_content": descriptionAfterContent,
        "file": file,
        "created_date": createdDate?.toIso8601String(),
        "update_date": updateDate?.toIso8601String(),
        "active": active,
        "deleted": deleted,
        "ps": psValues.reverse[ps],
        "cod": cod,
        "state": state,
        "file2": file2,
        "footer": footer,
        "heading": heading,
        "sub_heading": subHeadingValues.reverse[subHeading],
        "footer_content": footerContent,
        "seo_title": seoTitle,
        "seo_description": seoDescription,
        "seo_keywords": seoKeywords,
        "slug_history": List<dynamic>.from(slugHistory!.map((x) => x)),
        "_id": id,
        "slug": slug,
        "__v": v,
      };
}

enum Ps { PRODUCT, BOTH, SERVICE }

final psValues =
    EnumValues({"both": Ps.BOTH, "product": Ps.PRODUCT, "service": Ps.SERVICE});

enum SubHeading { CONNECTING_FOOD_CAPITALS_OF_INDIA, EMPTY }

final subHeadingValues = EnumValues({
  "Connecting Food Capitals of India.":
      SubHeading.CONNECTING_FOOD_CAPITALS_OF_INDIA,
  "": SubHeading.EMPTY
});

class Featured {
  Featured({
    this.comboProducts,
    this.name,
    this.category,
    this.subCategory,
    this.cuisine,
    this.brand,
    this.vendor,
    this.desc,
    this.shortDesc,
    this.file,
    this.price,
    this.sellingPrice,
    this.discountedPrice,
    this.batchno,
    this.city,
    this.commission,
    this.packagingCharge,
    this.taxStatus,
    this.cgst,
    this.sgst,
    this.igst,
    this.sku,
    this.stockQty,
    this.backorders,
    this.threshold,
    this.manageStock,
    this.weight,
    this.length,
    this.width,
    this.height,
    this.attribute,
    this.tags,
    this.startDate,
    this.endDate,
    this.createdDate,
    this.updateDate,
    this.active,
    this.deal,
    this.featured,
    this.deleted,
    this.express,
    this.addedBy,
    this.point,
    this.stockProduct,
    this.consumable,
    this.seoTitle,
    this.seoDescription,
    this.seoKeywords,
    this.slugHistory,
    this.id,
    this.slug,
    this.v,
    this.pointExpDate,
  });

  dynamic comboProducts;
  String? name;
  CategoryEnum? category;
  SubCategory? subCategory;
  Cuisine? cuisine;
  String? brand;
  String? vendor;
  String? desc;
  String? shortDesc;
  List<FileElement>? file;
  int? price;
  int? sellingPrice;
  String? discountedPrice;
  String? batchno;
  CityEnum? city;
  String? commission;
  String? packagingCharge;
  String? taxStatus;
  String? cgst;
  String? sgst;
  String? igst;
  String? sku;
  String? stockQty;
  String? backorders;
  String? threshold;
  int? manageStock;
  String? weight;
  String? length;
  String? width;
  String? height;
  String? attribute;
  String? tags;
  DateTime? startDate;
  DateTime? endDate;
  DateTime? createdDate;
  DateTime? updateDate;
  int? active;
  int? deal;
  int? featured;
  int? deleted;
  bool? express;
  String? addedBy;
  int? point;
  StockProduct? stockProduct;
  int? consumable;
  String? seoTitle;
  String? seoDescription;
  String? seoKeywords;
  List<String>? slugHistory;
  String? id;
  String? slug;
  int? v;
  DateTime? pointExpDate;

  factory Featured.fromJson(Map<String, dynamic> json) => Featured(
        comboProducts: json["combo_products"],
        name: json["name"],
        category: categoryEnumValues.map[json["category"]],
        subCategory: subCategoryValues.map[json["sub_category"]],
        cuisine: cuisineValues.map[json["cuisine"]],
        brand: json["brand"],
        vendor: json["vendor"],
        desc: json["desc"],
        shortDesc: json["short_desc"],
        file: List<FileElement>.from(
            json["file"].map((x) => FileElement.fromJson(x))),
        price: json["price"],
        sellingPrice: json["selling_price"],
        discountedPrice: json["discounted_price"],
        batchno: json["batchno"],
        city: cityEnumValues.map[json["city"]],
        commission: json["commission"],
        packagingCharge: json["packaging_charge"],
        taxStatus: json["tax_status"],
        cgst: json["cgst"],
        sgst: json["sgst"],
        igst: json["igst"],
        sku: json["sku"],
        stockQty: json["stock_qty"],
        backorders: json["backorders"],
        threshold: json["threshold"],
        manageStock: json["manage_stock"],
        weight: json["weight"],
        length: json["length"],
        width: json["width"],
        height: json["height"],
        attribute: json["attribute"],
        tags: json["tags"],
        startDate: DateTime.parse(json["start_date"]),
        endDate: DateTime.parse(json["end_date"]),
        createdDate: DateTime.parse(json["created_date"]),
        updateDate: DateTime.parse(json["update_date"]),
        active: json["active"],
        deal: json["deal"],
        featured: json["featured"],
        deleted: json["deleted"],
        express: json["express"],
        addedBy: json["added_by"],
        point: json["point"],
        stockProduct: stockProductValues.map[json["stock_product"]],
        consumable: json["consumable"],
        seoTitle: json["seo_title"],
        seoDescription: json["seo_description"],
        seoKeywords: json["seo_keywords"],
        slugHistory: List<String>.from(json["slug_history"].map((x) => x)),
        id: json["_id"],
        slug: json["slug"],
        v: json["__v"],
        pointExpDate: DateTime.parse(json["point_exp_date"]),
      );

  Map<String, dynamic> toJson() => {
        "combo_products": comboProducts,
        "name": name,
        "category": categoryEnumValues.reverse[category],
        "sub_category": subCategoryValues.reverse[subCategory],
        "cuisine": cuisineValues.reverse[cuisine],
        "brand": brand,
        "vendor": vendor,
        "desc": desc,
        "short_desc": shortDesc,
        "file": List<dynamic>.from(file!.map((x) => x.toJson())),
        "price": price,
        "selling_price": sellingPrice,
        "discounted_price": discountedPrice,
        "batchno": batchno,
        "city": cityEnumValues.reverse[city],
        "commission": commission,
        "packaging_charge": packagingCharge,
        "tax_status": taxStatus,
        "cgst": cgst,
        "sgst": sgst,
        "igst": igst,
        "sku": sku,
        "stock_qty": stockQty,
        "backorders": backorders,
        "threshold": threshold,
        "manage_stock": manageStock,
        "weight": weight,
        "length": length,
        "width": width,
        "height": height,
        "attribute": attribute,
        "tags": tags,
        "start_date": startDate?.toIso8601String(),
        "end_date": endDate?.toIso8601String(),
        "created_date": createdDate?.toIso8601String(),
        "update_date": updateDate?.toIso8601String(),
        "active": active,
        "deal": deal,
        "featured": featured,
        "deleted": deleted,
        "express": express,
        "added_by": addedBy,
        "point": point,
        "stock_product": stockProductValues.reverse[stockProduct],
        "consumable": consumable,
        "seo_title": seoTitle,
        "seo_description": seoDescription,
        "seo_keywords": seoKeywords,
        "slug_history": List<dynamic>.from(slugHistory!.map((x) => x)),
        "_id": id,
        "slug": slug,
        "__v": v,
        "point_exp_date": pointExpDate?.toIso8601String(),
      };
}

enum CategoryEnum {
  THE_6050_BB1256_CB9_D00088521_BC,
  THE_6050_BF608_F37_B70008_B0_ED38
}

final categoryEnumValues = EnumValues({
  "6050bb1256cb9d00088521bc": CategoryEnum.THE_6050_BB1256_CB9_D00088521_BC,
  "6050bf608f37b70008b0ed38": CategoryEnum.THE_6050_BF608_F37_B70008_B0_ED38
});

enum CityEnum {
  THE_6049_F3_DB426_AC9000878_DDF6,
  THE_6049_F401426_AC9000878_DDF7,
  THE_6049_F399426_AC9000878_DDF5,
  THE_6049_F425426_AC9000878_DDF8,
  THE_6040_EAE14_A4_B6_C0008_FE1_AFF
}

final cityEnumValues = EnumValues({
  "6040eae14a4b6c0008fe1aff": CityEnum.THE_6040_EAE14_A4_B6_C0008_FE1_AFF,
  "6049f399426ac9000878ddf5": CityEnum.THE_6049_F399426_AC9000878_DDF5,
  "6049f3db426ac9000878ddf6": CityEnum.THE_6049_F3_DB426_AC9000878_DDF6,
  "6049f401426ac9000878ddf7": CityEnum.THE_6049_F401426_AC9000878_DDF7,
  "6049f425426ac9000878ddf8": CityEnum.THE_6049_F425426_AC9000878_DDF8
});

enum Cuisine {
  THE_603_F7100_F0_FABB000820850_B,
  THE_603_F70_A1_F0_FABB0008208509,
  THE_603_F7140_F0_FABB000820850_D,
  THE_603_F712_FF0_FABB000820850_C,
  THE_603_F70_AFF0_FABB000820850_A,
  THE_604_B4_A98_DBD6250008_FD88_E6,
  THE_603_F7096_F0_FABB0008208508
}

final cuisineValues = EnumValues({
  "603f7096f0fabb0008208508": Cuisine.THE_603_F7096_F0_FABB0008208508,
  "603f70a1f0fabb0008208509": Cuisine.THE_603_F70_A1_F0_FABB0008208509,
  "603f70aff0fabb000820850a": Cuisine.THE_603_F70_AFF0_FABB000820850_A,
  "603f7100f0fabb000820850b": Cuisine.THE_603_F7100_F0_FABB000820850_B,
  "603f712ff0fabb000820850c": Cuisine.THE_603_F712_FF0_FABB000820850_C,
  "603f7140f0fabb000820850d": Cuisine.THE_603_F7140_F0_FABB000820850_D,
  "604b4a98dbd6250008fd88e6": Cuisine.THE_604_B4_A98_DBD6250008_FD88_E6
});

class FileElement {
  FileElement({
    this.fieldname,
    this.originalname,
    this.encoding,
    this.mimetype,
    this.size,
    this.bucket,
    this.key,
    this.acl,
    this.contentType,
    this.contentDisposition,
    this.storageClass,
    this.serverSideEncryption,
    this.metadata,
    this.location,
    this.etag,
    this.versionId,
    this.contentEncoding,
  });

  Fieldname? fieldname;
  String? originalname;
  Encoding? encoding;
  Mimetype? mimetype;
  int? size;
  Bucket? bucket;
  String? key;
  Acl? acl;
  ContentType? contentType;
  dynamic contentDisposition;
  StorageClass? storageClass;
  dynamic serverSideEncryption;
  dynamic metadata;
  String? location;
  String? etag;
  dynamic versionId;
  dynamic contentEncoding;

  factory FileElement.fromJson(Map<String, dynamic> json) => FileElement(
        fieldname: fieldnameValues.map[json["fieldname"]],
        originalname: json["originalname"],
        encoding: encodingValues.map[json["encoding"]],
        mimetype: mimetypeValues.map[json["mimetype"]],
        size: json["size"],
        bucket: bucketValues.map[json["bucket"]],
        key: json["key"],
        acl: aclValues.map[json["acl"]],
        contentType: contentTypeValues.map[json["contentType"]],
        contentDisposition: json["contentDisposition"],
        storageClass: storageClassValues.map[json["storageClass"]],
        serverSideEncryption: json["serverSideEncryption"],
        metadata: json["metadata"],
        location: json["location"],
        etag: json["etag"],
        versionId: json["versionId"],
        contentEncoding: json["contentEncoding"],
      );

  Map<String, dynamic> toJson() => {
        "fieldname": fieldnameValues.reverse[fieldname],
        "originalname": originalname,
        "encoding": encodingValues.reverse[encoding],
        "mimetype": mimetypeValues.reverse[mimetype],
        "size": size,
        "bucket": bucketValues.reverse[bucket],
        "key": key,
        "acl": aclValues.reverse[acl],
        "contentType": contentTypeValues.reverse[contentType],
        "contentDisposition": contentDisposition,
        "storageClass": storageClassValues.reverse[storageClass],
        "serverSideEncryption": serverSideEncryption,
        "metadata": metadata,
        "location": location,
        "etag": etag,
        "versionId": versionId,
        "contentEncoding": contentEncoding,
      };
}

enum Acl { PUBLIC_READ }

final aclValues = EnumValues({"public-read": Acl.PUBLIC_READ});

enum Bucket { T2_P }

final bucketValues = EnumValues({"t2p": Bucket.T2_P});

enum ContentType { APPLICATION_OCTET_STREAM }

final contentTypeValues = EnumValues(
    {"application/octet-stream": ContentType.APPLICATION_OCTET_STREAM});

enum Encoding { THE_7_BIT }

final encodingValues = EnumValues({"7bit": Encoding.THE_7_BIT});

enum Fieldname { UPLOAD }

final fieldnameValues = EnumValues({"upload": Fieldname.UPLOAD});

enum Mimetype { IMAGE_JPEG, IMAGE_PNG }

final mimetypeValues = EnumValues(
    {"image/jpeg": Mimetype.IMAGE_JPEG, "image/png": Mimetype.IMAGE_PNG});

enum StorageClass { STANDARD }

final storageClassValues = EnumValues({"STANDARD": StorageClass.STANDARD});

enum StockProduct {
  THE_6049_F3_DB426_AC9000878_DDF6,
  THE_53_CB6_B9_B4_F4_DDEF1_AD47_F943
}

final stockProductValues = EnumValues({
  "53cb6b9b4f4ddef1ad47f943": StockProduct.THE_53_CB6_B9_B4_F4_DDEF1_AD47_F943,
  "6049f3db426ac9000878ddf6": StockProduct.THE_6049_F3_DB426_AC9000878_DDF6
});

enum SubCategory {
  THE_60546_AC1595327000817509_E,
  THE_60546_B27595327000817509_F,
  THE_60546_E2859532700081750_A0,
  THE_6050_C66_F9563_FE000877683_B,
  THE_606_ECA9_C19796600085_C1660,
  THE_62_B16_F2_B67_B5_EA75_B0_B0_A2_F4
}

final subCategoryValues = EnumValues({
  "6050c66f9563fe000877683b": SubCategory.THE_6050_C66_F9563_FE000877683_B,
  "60546ac1595327000817509e": SubCategory.THE_60546_AC1595327000817509_E,
  "60546b27595327000817509f": SubCategory.THE_60546_B27595327000817509_F,
  "60546e2859532700081750a0": SubCategory.THE_60546_E2859532700081750_A0,
  "606eca9c19796600085c1660": SubCategory.THE_606_ECA9_C19796600085_C1660,
  "62b16f2b67b5ea75b0b0a2f4": SubCategory.THE_62_B16_F2_B67_B5_EA75_B0_B0_A2_F4
});

class Slider {
  Slider({
    this.city,
    this.name,
    this.file,
    this.createdDate,
    this.updateDate,
    this.active,
    this.deleted,
    this.id,
    this.v,
  });

  SliderCity? city;
  String? name;
  String? file;
  DateTime? createdDate;
  DateTime? updateDate;
  int? active;
  int? deleted;
  String? id;
  int? v;

  factory Slider.fromJson(Map<String, dynamic> json) => Slider(
        city: SliderCity.fromJson(json["city"]),
        name: json["name"],
        file: json["file"],
        createdDate: DateTime.parse(json["created_date"]),
        updateDate: DateTime.parse(json["update_date"]),
        active: json["active"],
        deleted: json["deleted"],
        id: json["_id"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "city": city?.toJson(),
        "name": name,
        "file": file,
        "created_date": createdDate?.toIso8601String(),
        "update_date": updateDate?.toIso8601String(),
        "active": active,
        "deleted": deleted,
        "_id": id,
        "__v": v,
      };
}

class SliderCity {
  SliderCity({
    this.name,
    this.id,
  });

  String? name;
  String? id;

  factory SliderCity.fromJson(Map<String, dynamic> json) => SliderCity(
        name: json["name"],
        id: json["_id"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "_id": id,
      };
}

class Special {
  Special({
    this.coupon,
    this.desc,
    this.type,
    this.amount,
    this.startDate,
    this.expDate,
    this.minimumAmount,
    this.maximumAmount,
    this.maxUsageLimit,
    this.maxUsageLimitUser,
    this.createdDate,
    this.updateDate,
    this.active,
    this.deleted,
    this.brand,
    this.category,
    this.product,
    this.customer,
    this.exclusive,
    this.id,
    this.v,
  });

  String? coupon;
  String? desc;
  Type? type;
  String? amount;
  DateTime? startDate;
  DateTime? expDate;
  String? minimumAmount;
  String? maximumAmount;
  int? maxUsageLimit;
  int? maxUsageLimitUser;
  DateTime? createdDate;
  DateTime? updateDate;
  int? active;
  int? deleted;
  List<String>? brand;
  List<CategoryEnum>? category;
  List<String>? product;
  List<String>? customer;
  Exclusive? exclusive;
  String? id;
  int? v;

  factory Special.fromJson(Map<String, dynamic> json) => Special(
        coupon: json["coupon"],
        desc: json["desc"],
        type: typeValues.map[json["type"]],
        amount: json["amount"],
        startDate: DateTime.parse(json["start_date"]),
        expDate: DateTime.parse(json["exp_date"]),
        minimumAmount: json["minimum_amount"],
        maximumAmount: json["maximum_amount"],
        maxUsageLimit: json["max_usage_limit"],
        maxUsageLimitUser: json["max_usage_limit_user"],
        createdDate: DateTime.parse(json["created_date"]),
        updateDate: DateTime.parse(json["update_date"]),
        active: json["active"],
        deleted: json["deleted"],
        brand: json["brand"] == null
            ? null
            : List<String>.from(json["brand"].map((x) => x)),
        category: json["category"] == null
            ? null
            : List<CategoryEnum>.from(
                json["category"].map((x) => categoryEnumValues.map[x])),
        product: json["product"] == null
            ? null
            : List<String>.from(json["product"].map((x) => x)),
        customer: json["customer"] == null
            ? null
            : List<String>.from(json["customer"].map((x) => x)),
        exclusive: exclusiveValues.map[json["exclusive"]],
        id: json["_id"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "coupon": coupon,
        "desc": desc,
        "type": typeValues.reverse[type],
        "amount": amount,
        "start_date": startDate?.toIso8601String(),
        "exp_date": expDate?.toIso8601String(),
        "minimum_amount": minimumAmount,
        "maximum_amount": maximumAmount,
        "max_usage_limit": maxUsageLimit,
        "max_usage_limit_user": maxUsageLimitUser,
        "created_date": createdDate?.toIso8601String(),
        "update_date": updateDate?.toIso8601String(),
        "active": active,
        "deleted": deleted,
        "brand":
            brand == null ? null : List<dynamic>.from(brand!.map((x) => x)),
        "category": category == null
            ? null
            : List<dynamic>.from(
                category!.map((x) => categoryEnumValues.reverse[x])),
        "product":
            product == null ? null : List<dynamic>.from(product!.map((x) => x)),
        "customer": customer == null
            ? null
            : List<dynamic>.from(customer!.map((x) => x)),
        "exclusive": exclusiveValues.reverse[exclusive],
        "_id": id,
        "__v": v,
      };
}

enum Exclusive { NO, YES, EMPTY }

final exclusiveValues =
    EnumValues({"": Exclusive.EMPTY, "no": Exclusive.NO, "yes": Exclusive.YES});

enum Type { P, F }

final typeValues = EnumValues({"F": Type.F, "P": Type.P});

class EnumValues<T> {
  late Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    return reverseMap;
  }
}
