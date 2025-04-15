import 'package:flutter/material.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eshop'),
        centerTitle: true,
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            ), itemCount: 10, 
            itemBuilder : (context, index){
              return Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      width: double.infinity,
                      child: Image.network('https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/214/2024/09/11/10-2518875220.jpg',
                      fit: BoxFit.cover
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4
                      ),
                      child: Text('Kategori ${index + 1}',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey
                       ),
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4
                      ),
                      child: Text('Produk ${index + 1}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                       ),
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4
                      ),
                      child: Text('\$20.0',
                      style: TextStyle(
                        color: Colors.grey
                       ),
                      )
                    ),
                  ],
                ),
              );
            }),
    );
  }
}