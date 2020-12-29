import 'package:BMtec_app/api/woo.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text('PRODUTOS'),
          ),
          FutureBuilder(
            future: products(),
            builder: (context, snapshot) {
              final item = snapshot.data;
              return Column(
                children: [
                  ...item.map((product) {
                    return GestureDetector(
                      onTap: () {},
                      child: Card(
                        child: Container(
                          width: double.infinity,
                          child: Column(
                            children: [
                              Image.network(product["images"][0]["src"]),
                              Text(product['name']),
                              Text(product['price']),
                              Text(product['short_description']),
                            ],
                          ),
                        ),
                      ),
                    );
                  })
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
