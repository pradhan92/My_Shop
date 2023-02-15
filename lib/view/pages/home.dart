import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:myshop/view/widget/cart_items.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> key = GlobalKey<FormState>();
    TextEditingController search = TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      right: 58.0, top: 10, bottom: 10, left: 5),
                  child: TextFormField(
                    controller: search,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Search for product',
                      prefixIcon: Icon(Icons.search),
                    ),
                    validator: ((value) =>
                        value!.isEmpty ? 'search required' : null),
                    keyboardType: TextInputType.text,
                  ),
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 120.0,
                    autoPlay: true,
                    viewportFraction: 1,
                  ),
                  items: [
                    "https://media.istockphoto.com/photos/nepali-flag-in-a-bag-with-coffee-beans-isolated-on-black-background-picture-id663071234?k=20&m=663071234&s=612x612&w=0&h=VnvwMoarjkTdqW61s7k8hogAqmYPioebVO07aQzRFpM=",
                    "https://media.istockphoto.com/photos/nepal-kathmandu-souvenir-gift-in-street-market-for-touristnepali-word-picture-id1215520525?k=20&m=1215520525&s=612x612&w=0&h=FqBlfb_WAplJW-vopARxy9nEki6U9MGZBR2IUi_5FRM=",
                    "https://media.istockphoto.com/photos/nepali-souvenir-picture-id1271552489?k=20&m=1271552489&s=612x612&w=0&h=pzAa_KM-1EiTcG5uL_jRL8qFCYchH9MC6iHIA3LKgow=",
                    "https://media.istockphoto.com/photos/traditional-nepali-hats-in-bhatktapur-city-nepal-picture-id1035953040?k=20&m=1035953040&s=612x612&w=0&h=WiAa0MgS3ttlKDb13y8ngAYL6K1lNzZ20maYA5LtuwM=",
                    "https://media.istockphoto.com/photos/group-of-black-nepali-yaks-carrying-their-heavy-load-in-himalayan-picture-id894153284?k=20&m=894153284&s=612x612&w=0&h=fNLkuk7ptiyfEodjzYc0FkcpjKx2ail2SRizcCbVpuU="
                  ].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 0.0),
                          decoration: const BoxDecoration(color: Colors.amber),
                          child: Image.network(
                            i,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                const Text(
                  "Categories",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      Chip(label: Text('Rice')),
                      Chip(label: Text('Daal')),
                      Chip(label: Text('Spices')),
                      Chip(label: Text('Flour')),
                      Chip(label: Text('Meat')),
                      Chip(label: Text('Noodles')),
                      Chip(label: Text('Oil/Ghee')),
                      Chip(label: Text('Snacks')),
                      Chip(label: Text('Frozen Items')),
                      Chip(label: Text('Vegetables')),
                      Chip(label: Text('Pickles')),
                      Chip(label: Text('Drinks')),
                      Chip(label: Text('Sweets')),
                      Chip(label: Text('Health & beauty')),
                      Chip(label: Text('Cooking Utensils')),
                      Chip(label: Text('Soup')),
                      Chip(label: Text('foods')),
                      Chip(label: Text('Condiments')),
                      Chip(label: Text('Others')),
                    ],
                  ),
                ),
                const Text(
                  "Recommended Items",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 200,
                  width: Get.size.width,
                  //width: MediaQuery.of(context).size.width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      CardItem(
                        title: "Chicken Pizza",
                        price: "RS.550",
                        image:
                            "https://media.istockphoto.com/photos/delicious-pizza-chicken-catupiry-flavor-served-on-a-wooden-board-made-picture-id1240612833?b=1&k=20&m=1240612833&s=170667a&w=0&h=0-FouxIL_1So_oYz5Cdguzag6JMteJ5sa5h2savcmyk=",
                      ),
                      CardItem(
                        title: "Chicken Burger",
                        price: "RS.350",
                        image:
                            "https://cdn.pixabay.com/photo/2017/11/16/05/51/chicken-burger-2953388__480.jpg",
                      ),
                      CardItem(
                        title: "Chicken Hotdog",
                        price: "RS.550",
                        image:
                            "https://media.istockphoto.com/photos/american-traditional-fast-food-hotdog-with-fresh-organic-bread-bun-picture-id1283484211?b=1&k=20&m=1283484211&s=170667a&w=0&h=gDO5CmVNFPGK4ePg_4yzCu7qXMJhEg3VKcLejMb2mks=",
                      ),
                      CardItem(
                        title: "Chicken Roll",
                        price: "RS.650",
                        image:
                            "https://media.istockphoto.com/photos/stuffed-turkey-breast-cut-into-pieces-picture-id124973115?b=1&k=20&m=124973115&s=170667a&w=0&h=a8jOQ87nYnjhYJOaJyvif9QObOA4bbX07a2mZBR0VQs=",
                      ),
                      CardItem(
                        title: "Chicken Tik-ka",
                        price: "RS.350",
                        image:
                            "https://media.istockphoto.com/photos/authentic-indian-chicken-fry-with-spices-curry-leaf-and-coconut-picture-id825534772?b=1&k=20&m=825534772&s=170667a&w=0&h=IkXctLCAMHFGhhx-heQ6YfaaURvUGKj2PgUjgo4pbBM=",
                      ),
                      CardItem(
                        title: "Chicken Piazza",
                        price: "550",
                        image:
                            "https://media.istockphoto.com/photos/homemade-indian-chicken-tikka-masala-pizza-picture-id1340589333?b=1&k=20&m=1340589333&s=170667a&w=0&h=rQaaNq-2klpZXcZ26amIfELKxq78-9S79FycY7Kzu28=",
                      ),
                      CardItem(
                        title: "Vegetable Pizza",
                        price: "RS.250",
                        image:
                            "https://media.istockphoto.com/photos/homemade-quich-with-chicken-goat-cheese-and-spinach-selective-focus-picture-id959139958?b=1&k=20&m=959139958&s=170667a&w=0&h=y13TpotVZyP6BrEjsbdlO3VWClmYATHGfvy-ti5039A=",
                      ),
                      CardItem(
                        title: "Vegetable Burger",
                        price: "RS.250",
                        image:
                            "https://media.istockphoto.com/photos/plant-based-black-bean-burger-on-a-sesame-seed-bun-picture-id1323194107?b=1&k=20&m=1323194107&s=170667a&w=0&h=dCPMlPqMp_8nFo70u5kllpmneIkN0tOo-hcwrLllajI=",
                      ),
                      CardItem(
                        title: "Chicken Nuts",
                        price: "RS.250",
                        image:
                            "https://cdn.pixabay.com/photo/2016/03/05/22/24/bread-1239274__480.jpg",
                      ),
                      CardItem(
                        title: "French Fry",
                        price: "RS.150",
                        image:
                            "https://cdn.pixabay.com/photo/2016/04/25/01/58/french-fries-1351062__480.jpg",
                      ),
                      CardItem(
                        title: "Chicken Soup",
                        price: "450",
                        image:
                            "https://cdn.pixabay.com/photo/2021/08/22/15/23/broth-6565426__480.jpg",
                      ),
                    ],
                  ),
                ),
                const Text(
                  "Top Selling ",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 200,
                  width: Get.size.width,
                  //width: MediaQuery.of(context).size.width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      CardItem(
                        title: "French fry ",
                        price: "RS.450",
                        image:
                            "https://cdn.pixabay.com/photo/2012/03/02/00/29/beef-20678__480.jpg",
                      ),
                      CardItem(
                        title: "Chicken Hotdog",
                        price: "RS.550",
                        image:
                            "https://media.istockphoto.com/photos/american-traditional-fast-food-hotdog-with-fresh-organic-bread-bun-picture-id1283484211?b=1&k=20&m=1283484211&s=170667a&w=0&h=gDO5CmVNFPGK4ePg_4yzCu7qXMJhEg3VKcLejMb2mks=",
                      ),
                      CardItem(
                        title: "Chicken Roll",
                        price: "RS.650",
                        image:
                            "https://media.istockphoto.com/photos/stuffed-turkey-breast-cut-into-pieces-picture-id124973115?b=1&k=20&m=124973115&s=170667a&w=0&h=a8jOQ87nYnjhYJOaJyvif9QObOA4bbX07a2mZBR0VQs=",
                      ),
                      CardItem(
                        title: "Chicken Tik-ka",
                        price: "RS.350",
                        image:
                            "https://media.istockphoto.com/photos/authentic-indian-chicken-fry-with-spices-curry-leaf-and-coconut-picture-id825534772?b=1&k=20&m=825534772&s=170667a&w=0&h=IkXctLCAMHFGhhx-heQ6YfaaURvUGKj2PgUjgo4pbBM=",
                      ),
                      CardItem(
                        title: "Chicken Piazza",
                        price: "550",
                        image:
                            "https://media.istockphoto.com/photos/homemade-indian-chicken-tikka-masala-pizza-picture-id1340589333?b=1&k=20&m=1340589333&s=170667a&w=0&h=rQaaNq-2klpZXcZ26amIfELKxq78-9S79FycY7Kzu28=",
                      ),
                      CardItem(
                        title: "Vegetable Pizza",
                        price: "RS.250",
                        image:
                            "https://media.istockphoto.com/photos/homemade-quich-with-chicken-goat-cheese-and-spinach-selective-focus-picture-id959139958?b=1&k=20&m=959139958&s=170667a&w=0&h=y13TpotVZyP6BrEjsbdlO3VWClmYATHGfvy-ti5039A=",
                      ),
                      CardItem(
                        title: "Vegetable Burger",
                        price: "RS.250",
                        image:
                            "https://media.istockphoto.com/photos/plant-based-black-bean-burger-on-a-sesame-seed-bun-picture-id1323194107?b=1&k=20&m=1323194107&s=170667a&w=0&h=dCPMlPqMp_8nFo70u5kllpmneIkN0tOo-hcwrLllajI=",
                      ),
                      CardItem(
                        title: "Chicken Nuts",
                        price: "RS.250",
                        image:
                            "https://cdn.pixabay.com/photo/2016/03/05/22/24/bread-1239274__480.jpg",
                      ),
                      CardItem(
                        title: "French Fry",
                        price: "RS.150",
                        image:
                            "https://cdn.pixabay.com/photo/2016/04/25/01/58/french-fries-1351062__480.jpg",
                      ),
                      CardItem(
                        title: "Chicken Soup",
                        price: "450",
                        image:
                            "https://cdn.pixabay.com/photo/2021/08/22/15/23/broth-6565426__480.jpg",
                      ),
                    ],
                  ),
                ),
                const Text(
                  "New Arrival",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 200,
                  width: Get.size.width,
                  //width: MediaQuery.of(context).size.width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      CardItem(
                        title: "Chicken Roll",
                        price: "RS.650",
                        image:
                            "https://media.istockphoto.com/photos/stuffed-turkey-breast-cut-into-pieces-picture-id124973115?b=1&k=20&m=124973115&s=170667a&w=0&h=a8jOQ87nYnjhYJOaJyvif9QObOA4bbX07a2mZBR0VQs=",
                      ),
                      CardItem(
                        title: "Vegetable Burger",
                        price: "RS.250",
                        image:
                            "https://media.istockphoto.com/photos/plant-based-black-bean-burger-on-a-sesame-seed-bun-picture-id1323194107?b=1&k=20&m=1323194107&s=170667a&w=0&h=dCPMlPqMp_8nFo70u5kllpmneIkN0tOo-hcwrLllajI=",
                      ),
                      CardItem(
                        title: "Chicken Nuts",
                        price: "RS.250",
                        image:
                            "https://cdn.pixabay.com/photo/2016/03/05/22/24/bread-1239274__480.jpg",
                      ),
                      CardItem(
                        title: "French Fry",
                        price: "RS.150",
                        image:
                            "https://cdn.pixabay.com/photo/2016/04/25/01/58/french-fries-1351062__480.jpg",
                      ),
                      CardItem(
                        title: "Chicken Soup",
                        price: "450",
                        image:
                            "https://cdn.pixabay.com/photo/2021/08/22/15/23/broth-6565426__480.jpg",
                      ),
                    ],
                  ),
                ),
                const Text(
                  "Available Stores",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 200,
                  width: Get.size.width,
                  //width: MediaQuery.of(context).size.width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      CardItem(
                        title: "Chicken Tik-ka",
                        price: "RS.350",
                        image:
                            "https://media.istockphoto.com/photos/authentic-indian-chicken-fry-with-spices-curry-leaf-and-coconut-picture-id825534772?b=1&k=20&m=825534772&s=170667a&w=0&h=IkXctLCAMHFGhhx-heQ6YfaaURvUGKj2PgUjgo4pbBM=",
                      ),
                      CardItem(
                        title: "Chicken Piazza",
                        price: "550",
                        image:
                            "https://media.istockphoto.com/photos/homemade-indian-chicken-tikka-masala-pizza-picture-id1340589333?b=1&k=20&m=1340589333&s=170667a&w=0&h=rQaaNq-2klpZXcZ26amIfELKxq78-9S79FycY7Kzu28=",
                      ),
                      CardItem(
                        title: "Vegetable Pizza",
                        price: "RS.250",
                        image:
                            "https://media.istockphoto.com/photos/homemade-quich-with-chicken-goat-cheese-and-spinach-selective-focus-picture-id959139958?b=1&k=20&m=959139958&s=170667a&w=0&h=y13TpotVZyP6BrEjsbdlO3VWClmYATHGfvy-ti5039A=",
                      ),
                      CardItem(
                        title: "Vegetable Burger",
                        price: "RS.250",
                        image:
                            "https://media.istockphoto.com/photos/plant-based-black-bean-burger-on-a-sesame-seed-bun-picture-id1323194107?b=1&k=20&m=1323194107&s=170667a&w=0&h=dCPMlPqMp_8nFo70u5kllpmneIkN0tOo-hcwrLllajI=",
                      ),
                      CardItem(
                        title: "Chicken Nuts",
                        price: "RS.250",
                        image:
                            "https://cdn.pixabay.com/photo/2016/03/05/22/24/bread-1239274__480.jpg",
                      ),
                      CardItem(
                        title: "French Fry",
                        price: "RS.150",
                        image:
                            "https://cdn.pixabay.com/photo/2016/04/25/01/58/french-fries-1351062__480.jpg",
                      ),
                      CardItem(
                        title: "Chicken Soup",
                        price: "450",
                        image:
                            "https://cdn.pixabay.com/photo/2021/08/22/15/23/broth-6565426__480.jpg",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
