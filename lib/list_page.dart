import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_4/detail_page.dart';
import 'package:flutter_application_4/restaurant_model.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.builder(
        itemCount: listResto.length,
        // listview.builder butu itemcount dan
        //itemcount untuk menentukan berapa banyak list yang ada
        itemBuilder: (context, index) {
          // itembuilder untuk menentukan apa yang kita buat
          final Restaurant item = listResto[index];
          // final untuk memberikan nama ke list yang kita buat disini contohnya item
          return Container(
            height: 100,
            child: Card(
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              restaurant: item,
                            ),
                          ));
                    },
                    child: Image.asset(
                      item.foto,
                      width: 100,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(item.title),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          item.lokasi,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
          // return ListTile(
          //   title: Text(item.title),
          //   trailing: Text("${item.rating}"),
          //   // item.rating ditulis begitu karnya ratingnya itu double jadi pake string interpoletion
          //   // kalo gk mau gitu bisa ditulis item.rating.toString()
          //   onTap: () => Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => DetailPage(restaurant: item),
          //     ),
          //   ),
          // );
        },
      )),
    );
  }
}
