import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ChipinDetail extends StatefulWidget {
  const ChipinDetail({Key? key}) : super(key: key);

  @override
  State<ChipinDetail> createState() => _ChipinDetailState();
}

List<String> features = [
  'Untuk keluarga yang tinggal serumah',
  'Blokir musik eksplisit',
  'Mendengarkan musik bebas iklan',
  'Group Session',
  'Download 10k lagu/perangkat di 5 perangkat',
  'Sekali bayar atau berlangganan',
];

class _ChipinDetailState extends State<ChipinDetail> {
  final String shopName = 'Toko Streaming Murah';
  final String houseName = 'Si Paling Stranger Things';

  @override
  Widget build(BuildContext context) {
    List<Widget> itemSection = [
      ListTile(
        leading: const FlutterLogo(
          size: 64,
        ),
        title: Text(houseName),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('$shopName •'),
                const Icon(
                  Icons.star,
                  size: 14,
                ),
                Text('4.8'),
              ],
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Langganan"))
          ],
        ),
        trailing: IconButton(
          icon: Icon(Icons.more_horiz),
          onPressed: () {},
        ),
      ),
      CarouselSlider(
        options: CarouselOptions(
            padEnds: false,
            viewportFraction: 0.56,
            // aspectRatio: 1.5,
            enableInfiniteScroll: false),
        items: [1, 2, 3, 4, 5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return AspectRatio(
                aspectRatio: 1,
                child: Container(
                    // width: MediaQuery.of(context).size.width,
                    height: 200,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: const BoxDecoration(color: Colors.amber),
                    child: Image.network('https://picsum.photos/300/300')),
              );
            },
          );
        }).toList(),
      ),
      Card(
        color: Colors.grey,
        child: ListTile(
          leading: Text('Layanan'),
          trailing: Text('Netflix 4K'),
        ),
      ),
      AspectRatio(
        aspectRatio: 1,
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color(0xFF971EFD),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text('5 Oct - 10 December 2021'),
            const Spacer(),
            Badge(
              badgeContent: const Text('New'),
              shape: BadgeShape.square,
              borderRadius: BorderRadius.circular(6),
              child: Container(
                height: 100,
                width: 100,
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
              'Si Paling Stranger Things',
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Toko Streaming Murah'),
                Text.rich(
                  TextSpan(
                    style: Theme.of(context).textTheme.headline3,
                    children: const [
                      WidgetSpan(
                          child: Icon(
                        Icons.star,
                        size: 36,
                      )),
                      TextSpan(text: ' 3.8'),
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
      Row(
        children: [
          ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.login),
              label: const Text('Langganan')),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ElevatedButton(
              onPressed: () {},
              child: const Icon(Icons.share),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Icon(Icons.more_vert),
          ),
        ],
      ),
      Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: Colors.grey.shade800.withOpacity(0.3)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Layanan',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'Netflix 4K',
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: Colors.grey.shade800.withOpacity(0.3)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Iuran per bulan',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'Rp36.000',
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ),
      Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(16)),
          // child: Text('test'),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  const Text.rich(
                    TextSpan(
                      children: [
                        WidgetSpan(
                            child: Icon(
                          Icons.star,
                          color: Colors.grey,
                          size: 17,
                        )),
                        TextSpan(text: ' 3.8'),
                      ],
                    ),
                  ),
                  Text(
                    '10.9K',
                    style: Theme.of(context).textTheme.caption,
                  )
                ],
              ),
              Column(
                children: const [Text('test'), Text('test')],
              ),
              Column(
                children: const [Text('test'), Text('test')],
              ),
            ],
          )),
      SizedBox(
        height: 50,
        child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
                  width: 8.0,
                ),
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              return const CircleAvatar(
                radius: 24.0,
                backgroundColor: Colors.grey,
                child: Icon(Icons.person),
              );
            }),
      ),
      Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(16)),
        // child: Text('test'),
        child: ListView.builder(
          itemBuilder: (context, index) => ListTile(
              leading: const Icon(Icons.check), title: Text(features[index])),
          itemCount: features.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('ChipIn'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => itemSection[index],
        itemCount: itemSection.length,
        separatorBuilder: (context, index) => const SizedBox(height: 12.0),
      ),
    );
  }
}

// class ChipinDetail2 extends StatelessWidget {
//   const ChipinDetail2({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).primaryColor,
//       body: CustomScrollView(
//         physics: const BouncingScrollPhysics(),
//         slivers: [
//           SliverAppBar(
//             leading: const BackButton(),
//             backgroundColor: Theme.of(context).primaryColor,
//             pinned: true,
//             snap: true,
//             floating: true,
//             stretch: true,
//             expandedHeight: MediaQuery.of(context).size.width,
//             flexibleSpace: FlexibleSpaceBar(
//               stretchModes: const [
//                 StretchMode.blurBackground,
//                 StretchMode.zoomBackground
//               ],
//               centerTitle: true,
//               title:
//                   const Text('Patungan Bersamaku', textAlign: TextAlign.center),
//               background: Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   Text(
//                     "PATUNGANBERSAMAKUPATUNGANBERSAMAKUPATUNGANBERSAMAKUPATUNGANBERSAMAKUPATUNGANBERSAMAKUPATUNGANBERSAMAKUPATUNGANBERSAMAKUPATUNGANBERSAMAKU",
//                     style: TextStyle(
//                         overflow: TextOverflow.fade,
//                         color: Colors.white.withOpacity(0.05),
//                         fontWeight: FontWeight.bold,
//                         fontSize: 46),
//                     textAlign: TextAlign.center,
//                   ),
//                   Container(
//                     height: 300,
//                     width: 300,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(16),
//                       image: const DecorationImage(
//                           fit: BoxFit.cover,
//                           image: NetworkImage(
//                               'https://images.pexels.com/photos/2524145/pexels-photo-2524145.jpeg?auto=compress&cs=tinysrgb&w=400')),
//                       //     color: Colors.grey),
//                       // child: Image.network(
//                       //   'https://selularid.b-cdn.net/wp-content/uploads/2022/05/st4.jpg',
//                       //   fit: BoxFit.cover,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SliverFillRemaining(
//               child: ListView(
//             padding:
//                 const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 16.0),
//                 child: Text(
//                   'Abadi • @abadisurio',
//                   style: Theme.of(context).textTheme.bodyText2,
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               Container(
//                 margin: const EdgeInsets.only(bottom: 16.0),
//                 padding: const EdgeInsets.all(20.0),
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(16.0),
//                     color: Colors.grey.shade800.withOpacity(0.3)),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       'Layanan',
//                       style: Theme.of(context).textTheme.headline4,
//                     ),
//                     Text(
//                       'Netflix 4K',
//                       style: Theme.of(context).textTheme.headline5,
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 margin: const EdgeInsets.only(bottom: 16.0),
//                 padding: const EdgeInsets.all(20.0),
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(16.0),
//                     color: Colors.grey.shade800.withOpacity(0.3)),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       'Iuran per bulan',
//                       style: Theme.of(context).textTheme.headline4,
//                     ),
//                     Text(
//                       'Rp36.000',
//                       style: Theme.of(context).textTheme.headline5,
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 16.0),
//                 child: SizedBox(
//                   height: 50,
//                   child: ListView.separated(
//                       separatorBuilder: (context, index) => const SizedBox(
//                             width: 8.0,
//                           ),
//                       scrollDirection: Axis.horizontal,
//                       itemCount: 3,
//                       itemBuilder: (context, index) {
//                         return const CircleAvatar(
//                           radius: 24.0,
//                           backgroundColor: Colors.grey,
//                           child: Icon(Icons.person),
//                         );
//                       }),
//                 ),
//               ),
//               const Text('''
// 🦋 JUAL NETFLIX PREMIUM 25K 🦋
// Trusted and Legit! 💯
// Guaranteed. 🍻

// 📌 Sharing Profile
// ☆ 1 hari 5k
// ☆ 1 minggu 15k
// ☆ 1 bulan 25k
// ☆ 3 bulan 58k

// 📌 Private Profile
// ☆ 1 bulan 38k
// ☆ 2 bulan 58k

// 📌 Private Account
// ☆ 1 bulan 165k
//                 ''')
//             ],
//           ))
//         ],
//       ),
//       bottomSheet: Container(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: [
//             OutlinedButton(onPressed: () {}, child: const Icon(Icons.chat)),
//             const SizedBox(
//               width: 8.0,
//             ),
//             Expanded(
//               child: ElevatedButton(
//                 child: const Text("Gabung Coster"),
//                 onPressed: () {},
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
