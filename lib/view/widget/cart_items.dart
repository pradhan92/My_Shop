import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardItem extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  const CardItem({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: 120,
        //width: Get.size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 120,
              height: 149,
              child: Image.network(image, fit: BoxFit.cover),
            ),
            //Image.network(image),
            //Vertical space
            //const SizedBox(
            //height: 10,
            //),
            FittedBox(
              child: Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text(price),
            // ElevatedButton(
            //     onPressed: () {},
            //     child: const Text(
            //       "Add To Cart",
            //       style: TextStyle(fontSize: 10),
            //     )),
          ],
        ),
      ),
    );
  }
}
