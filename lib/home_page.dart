import 'package:flutter/material.dart';
import 'package:flutter_application_4/detail_page.dart';
import 'package:flutter_application_4/next_page.dart';
import 'package:flutter_application_4/restaurant_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                //untuk berpindah halaman
              },
              onLongPress: () {
                //untuk berpindah halaman

                Navigator.push(
                  // push = dorong sekali ke route yang ditentukan, sekarang yang nextpage
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NextPage(),
                  ),
                );
              },
              child: Text("Menuju halaman lain"),
            ),
            ElevatedButton(
              onPressed: () {
                //untuk berpindah halaman namun tidak bisa balik lagi
                Navigator.pushReplacement(
                  // pushreplacement itu gk bisa balik lagi setelah pindah halaman
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NextPage(),
                  ),
                );
              },
              child: Text("ga bisa balik"),
            ),
          ],
        ),
      ),
    );
  }
}
 // child: ListView.builder(
        //   itemCount: restaurantList.length,
        //   itemBuilder: (context, index) {
        //     final RestaurantModel restaurant = restaurantList[index];
        //     return ListTile(
        //       leading: Text(restaurant.title),
        //       onTap: () {
        //         Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //             builder: (context) => DetailPage(
        //               restaurant: restaurant,
        //             ),
        //           ),
        //         );
        //       },
        //     );
        //   },
        // ),