import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              for (int i = 0; i < 2; i++)
                _buildCard(
                  'Moto G 5S',
                  '599.99',
                  'New product',
                  context,
                )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildCard(String name, String price, String shortDescription, context) {
  return InkWell(
    onTap: () {},
    child: Container(
      color: Colors.blueGrey,
      height: 200,
      width: 100,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            child: Image.asset('assets/images/logo.png'),
          ),
          Text(name),
          SizedBox(
            height: 5,
          ),
          Text(shortDescription),
          SizedBox(
            height: 5,
          ),
          Text('\$' + price),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    ),
  );
}

// Padding(
//         padding: EdgeInsets.all(8),
//         child: ListView.builder(
//           itemCount: productsData.items.length,
//           itemBuilder: (_, i) => GestureDetector(
//             onTap: () {},
//             child: Container(
//               height: 200,
//               width: 100,
//               margin: EdgeInsets.all(10),
//               child: Column(
//                 children: [
//                   Container(
//                     child: Image.network(
//                         productsData.items[i].imagesUrl[0].imageUrl),
//                   ),
//                   Text(productsData.items[i].name),
//                   SizedBox(
//                     height: 5,
//                   ),
//                   Text(productsData.items[i].shortDescription),
//                   SizedBox(
//                     height: 5,
//                   ),
//                   Text(productsData.items[i].price.toString()),
//                   SizedBox(
//                     height: 5,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
