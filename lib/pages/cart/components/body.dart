import 'package:flutter/material.dart';
import 'package:restaurant_app_ui/components/app_bar_widget.dart';
import 'package:restaurant_app_ui/components/drawer_widget.dart';
import 'package:restaurant_app_ui/components/section_title.dart';
import 'package:restaurant_app_ui/constant/box_shadow.dart';

import 'cart_bottom_nav_bar.dart';
import 'item_order.dart';
import 'order_card_item.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppBarWidget(),
                  const SectionTitle(
                    title: 'Order List',
                  ),
                  const OrderCardItem(
                    image: 'assets/images/pizza.png',
                    title: 'Hot Pizza',
                    description: 'Teste Our Hot Pizza',
                    price: 9.99,
                    numberOfItems: 5,
                  ),
                  const OrderCardItem(
                    image: 'assets/images/burger.png',
                    title: 'Hot Burger',
                    description: 'Teste Our Hot Burger',
                    price: 14.99,
                    numberOfItems: 2,
                  ),
                  const OrderCardItem(
                    image: 'assets/images/biryani.png',
                    title: 'Hot Biryani',
                    description: 'Teste Our Hot Biryani',
                    price: 14.99,
                    numberOfItems: 2,
                  ),
                  const OrderCardItem(
                    image: 'assets/images/drink.png',
                    title: 'Cold Drink',
                    description: 'Teste Our Cold Drink',
                    price: 4.99,
                    numberOfItems: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 30,
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          boxShadoow(),
                        ],
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Items',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '17',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            color: Colors.black,
                          ),
                          const ItemsOrder(
                            title: 'Sub-Total',
                            num: 60,
                          ),
                          const Divider(
                            color: Colors.black45,
                          ),
                          const ItemsOrder(
                            title: 'Delievry',
                            num: 20,
                          ),
                          const Divider(
                            color: Colors.black45,
                          ),
                          const ItemsOrder(
                            title: 'Total',
                            num: 1080,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      drawer: const DrawerWidget(),
      bottomNavigationBar: const CartButtomNavBar(),
    );
  }
}
