import 'package:flutter/cupertino.dart';

class RestaurantModel {
  final int id;
  final String title;
  // jika ingin optional datanya bisa diisi atau tidak maka kita
  // beri "?" setelah tipe data
  final String? deskripsi;
  RestaurantModel({
    required this.id,
    required this.title,
    // jika datanya optional maka requirednya dihapus
    this.deskripsi,
  });
}

List<RestaurantModel> restaurantList = [
  // restaurantlist itu nama yang kita tentuka, terserah mau apa saja
  RestaurantModel(
    id: 1,
    title: "Gumani Coffee",
    deskripsi:
        "Gumani Coffee adalah cafe untuk mahasiswa yang ingin memiliki pengalaman dan sensasi yang berbeda untuk menikmati kopi dan makanan saat senja dan sunrise",
  ),
  RestaurantModel(
    id: 2,
    title: "Raise Resto",
    deskripsi:
        "Raise Resto adalah cafe untuk mahasiswa yang ingin memiliki pengalaman dan sensasi yang berbeda untuk menikmati kopi dan makanan saat senja dan sunrise",
  ),
  RestaurantModel(
    id: 2,
    title: "Makan Siap Saji",
    deskripsi:
        "Makan Siap Saji adalah cafe untuk mahasiswa yang ingin memiliki pengalaman dan sensasi yang berbeda untuk menikmati kopi dan makanan saat senja dan sunrise",
  ),
];

//step 1 membuat tabel
class Restaurant {
  final String title;
  final String description;
  final double rating;
  final String foto;
  final String lokasi;

  const Restaurant({
    required this.title,
    required this.description,
    required this.rating,
    required this.foto,
    required this.lokasi,
  });
}

//step 2 isi tabel

const List<Restaurant> listResto = [
  // listresto itu terserah kita menentukan namanya
  Restaurant(
    foto: "assets/images/logo-social.png",
    lokasi: "Kabupaten Bogor",
    title: "Bubble Gum Ce",
    description: "description",
    rating: 4.0,
  ),
  Restaurant(
    foto: "assets/images/logo-social.png",
    lokasi: "Kabupaten Bogor",
    title: "Bububu Gum Cafe",
    description: "description",
    rating: 10,
  ),
  Restaurant(
    foto: "assets/images/logo-social.png",
    lokasi: "Kabupaten Bogor",
    title: "Sekoli Gum Cafe",
    description: "description",
    rating: 2.0,
  ),
];
