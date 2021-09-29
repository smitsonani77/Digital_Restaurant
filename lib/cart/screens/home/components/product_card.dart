import 'package:myapp/cart/components/fav_btn.dart';
import 'package:myapp/cart/components/price.dart';
import 'package:myapp/cart/models/Product.dart';
import 'package:myapp/cart/screens/deatils/details_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  final Product product;

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
        decoration: BoxDecoration(
          color: Colors.grey[100], //(0xFFF7F7F7)
          borderRadius: const BorderRadius.all(
            Radius.circular(defaultPadding * 1.25),
          ),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: product.title!,
                child: Image.asset(product.image!),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  product.title!,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                "Food",
                style: Theme.of(context).textTheme.caption,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Price(amount: "100.00"),
                  // FavBtn(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
