import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map> myProducts =
      List.generate(100, (index) => {"id": index, "name": "Product $index"})
          .toList();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 0.75,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12),
        itemCount: myProducts.length,
        itemBuilder: (BuildContext ctx, index) {
          return OutlinedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(const EdgeInsets.all(24)),
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'chipin_detail');
              },
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Badge(
                      badgeContent: const Text('New'),
                      shape: BadgeShape.square,
                      borderRadius: BorderRadius.circular(6),
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://i.pinimg.com/474x/55/ba/30/55ba30e8f83d0064ee7669dc203ad1d5.jpg')),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "Si Paling Stranger Things",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Netflix 4K',
                      style: Theme.of(context).textTheme.caption,
                    ),
                    // Text.rich(
                    //   TextSpan(
                    //     style: Theme.of(context).textTheme.caption,
                    //     children: [
                    //       WidgetSpan(
                    //           child: Icon(
                    //         Icons.supervised_user_circle,
                    //         color: Colors.grey,
                    //         size: 17,
                    //       )),
                    //       TextSpan(text: ' Netflix 4K'),
                    //     ],
                    //   ),
                    // ),
                    Text.rich(
                      TextSpan(
                        style: Theme.of(context).textTheme.caption,
                        children: [
                          WidgetSpan(
                              child: Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 17,
                          )),
                          TextSpan(text: ' 3.8 | Jeje'),
                        ],
                      ),
                    ),
                  ],
                ),
              ));
        });
  }
}
