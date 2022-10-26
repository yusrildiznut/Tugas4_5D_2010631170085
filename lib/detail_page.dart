import 'package:flutter/material.dart';

import 'package:flutter_application_4/restaurant_model.dart';

//step 5
class DetailPage extends StatelessWidget {
  //step 6
  final Restaurant restaurant;
  // memberi nama restaurant untuk data yang ada di model Restaurant

  const DetailPage({
    super.key,
    //step 7
    required this.restaurant,
    // halaman jalan kalau ada data di model Restaurant
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Image.asset(
              restaurant.foto,
            ),
            Text(restaurant.title),
            const SizedBox(
              height: 16,
            ),
            Text(restaurant.description),
            const SizedBox(
              height: 16,
            ),
            const Text("Rating:"),
            Text((restaurant.rating).toString()),
          ],
        ),
        // child: Column(
        //   children: [
        //     //step 8
        //     Text(restaurant.title),
        //     const SizedBox(
        //       height: 16,
        //     ),
        //     Container(
        //       width: 80,
        //       height: 50,
        //       child: Image(image: AssetImage(restaurant.foto)),
        //     ),

        //     //step 9 -> masuk ke list_page.dart
        //     Text(
        //       restaurant.description,
        //     ),
        //     Text("${restaurant.rating}"),
        //     ElevatedButton(
        //       onPressed: () {
        //         //berfungsi untuk kembali
        //         Navigator.pop(context);
        //       },
        //       child: Text("back"),
        //     )
        //   ],
        // ),
      ),
    );
  }
}
