import 'package:flutter/material.dart';
import 'package:grocery/core/components/product_images_slider.dart';
import 'package:grocery/core/components/review_row_button.dart';
import 'package:grocery/core/constants/app_defaults.dart';

import '../../core/components/app_back_button.dart';
import '../../core/components/buy_now_row_button.dart';
import '../../core/components/price_and_quantity.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Product Details'),
      ),
      body: Column(
        children: [
          const ProductImagesSlider(
            images: [
              'https://i.imgur.com/3o6ons9.png',
              'https://i.imgur.com/3o6ons9.png',
              'https://i.imgur.com/3o6ons9.png',
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(AppDefaults.padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cauliflower Bangladeshi',
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 8),
                  const Text('Weight: 5Kg'),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: AppDefaults.padding),
            child: PriceAndQuantityRow(
              currentPrice: 20,
              orginalPrice: 30,
              quantity: 2,
            ),
          ),
          const SizedBox(height: 8),

          /// Product Details
          Padding(
            padding: const EdgeInsets.all(AppDefaults.padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Product Details',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Duis aute veniam veniam qui aliquip irure duis sint magna occaecat dolore nisi culpa do. Est nisi incididunt aliquip  commodo aliqua tempor.',
                ),
              ],
            ),
          ),

          /// Review Row
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDefaults.padding,
              // vertical: AppDefaults.padding,
            ),
            child: Column(
              children: const [
                Divider(thickness: 0.1),
                ReviewRowButton(totalStars: 5),
                Divider(thickness: 0.1),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDefaults.padding,
              vertical: AppDefaults.padding,
            ),
            child: BuyNowRow(
              onBuyButtonTap: () {},
              onCartButtonTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}