import 'package:flutter/material.dart';

class ProductList {
  var pictureName;
  var productName;
  var productDescription;
  var productOffer;
  var productPrice;
  ProductList(this.pictureName, this.productName, this.productDescription,
      this.productOffer, this.productPrice);
}

class RunningCard extends StatelessWidget {
  const RunningCard({super.key});

  @override
  Widget build(BuildContext context) {
    ProductList p1 = ProductList("assets/images/trackpant.png", "FEEL HIGH",
        "men's trackpant", "60% Off", "149/-");
    ProductList p2 = ProductList("assets/images/trackpant.png", "NIKE",
        "men's trackpant", "70% Off", "149/-");
    ProductList p3 = ProductList("assets/images/trackpant.png", "PETER ENGLAND",
        "men's trackpant", "70% Off", "149/-");
    ProductList p4 = ProductList("assets/images/trackpant.png", "NIKE",
        "men's trackpant", "50% Off", "149/-");
    ProductList p5 = ProductList("assets/images/shoe.png", "ADIDAS",
        "Running Shoe", "70% Off", "1999/-");
    ProductList p6 = ProductList("assets/images/topwear.png", "BLUE MARTIN",
        "men's shirt", "60% Off", "149/-");
    ProductList p7 = ProductList("assets/images/topwear.png", "METRONAUT",
        "men's shirt", "70% Off", "149/-");
    ProductList p8 = ProductList("assets/images/trackpant.png", "NIKE",
        "men's trackpant", "80% Off", "149/-");
    ProductList p9 = ProductList("assets/images/trackpant.png", "NIKE",
        "men's trackpant", "70% Off", "149/-");
    ProductList p10 = ProductList("assets/images/trackpant.png",
        "PETER ENGLAND", "men's trackpant", "70% Off", "149/-");
    List<ProductList> list = [p1, p2, p3, p4, p5, p6, p7, p8, p9, p10];
    return SizedBox(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 10),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                border: Border.all(width: 1.0, color: Colors.white),
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 7.0, spreadRadius: 1.0, color: Colors.white)
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    height: 90,
                    width: 160,
                    child: Image.asset(
                      list[index].pictureName,
                      fit: BoxFit.cover,
                    )),
                Text(
                  list[index].productName,
                  style: const TextStyle(fontSize: 14, color: Colors.black),
                ),
                Text(
                  list[index].productOffer,
                  style: const TextStyle(fontSize: 10, color: Colors.black87),
                ),
                Text(
                  list[index].productDescription,
                  style: const TextStyle(fontSize: 12, color: Colors.black87),
                )
              ],
            ),
          );
        },
        itemCount: list.length,
      ),
    );
  }
}
