import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:shopping_cart/model/product.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List"),
        actions: [
          Center(
            child: Badge(
              position: BadgePosition.topEnd(),
              animationDuration: const Duration(milliseconds: 400),
              badgeContent: const Text("0"),
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: ListView.builder(
          itemCount: productList.length,
          itemBuilder: (context, index) {
            return Card(
              child: Row(children: [
                Container(
                  height:80,
                  child:Image.network("${productList[index].imageUrl}",fit: BoxFit.cover,)
                ),
                const SizedBox(width: 10,),
                Column(children: [
                  Text(productList[index].name!,style: const TextStyle(fontSize:18),),
                  const SizedBox(height: 6,),
                  Text(productList[index].unit!+"   "+productList[index].price.toString()+" DT",style: const TextStyle(fontSize:14),),

                ],),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
                    onPressed: (){}, child: const Text("Add to Cart")),
                )
              ]),
            );
          }),
    );
  }
}
