import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  const GridItem({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () => Navigator.pushNamed(context, 'chipin_detail'),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
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
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                Text.rich(
                  TextSpan(
                    style: Theme.of(context).textTheme.caption,
                    children: [
                      TextSpan(
                        text: "Rp37.000",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      TextSpan(
                        text: "/bulan",
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ],
                  ),
                ),
                Text(
                  'Netflix 4K',
                  style: Theme.of(context).textTheme.caption,
                ),
                Text.rich(
                  TextSpan(
                    style: Theme.of(context).textTheme.caption,
                    children: const [
                      WidgetSpan(
                          child: Icon(
                        Icons.star,
                        color: Colors.grey,
                        size: 17,
                      )),
                      TextSpan(text: ' 3.8 | 10 pengguna'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
