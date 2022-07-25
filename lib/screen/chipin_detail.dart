import 'package:flutter/material.dart';

class ChipinDetail extends StatefulWidget {
  const ChipinDetail({Key? key}) : super(key: key);

  @override
  State<ChipinDetail> createState() => _ChipinDetailState();
}

class _ChipinDetailState extends State<ChipinDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            leading: const BackButton(),
            backgroundColor: Theme.of(context).primaryColor,
            pinned: true,
            snap: true,
            floating: true,
            stretch: true,
            expandedHeight: MediaQuery.of(context).size.width,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: const [
                StretchMode.blurBackground,
                StretchMode.zoomBackground
              ],
              centerTitle: true,
              title:
                  const Text('Patungan Bersamaku', textAlign: TextAlign.center),
              background: Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    "PATUNGANBERSAMAKUPATUNGANBERSAMAKUPATUNGANBERSAMAKUPATUNGANBERSAMAKUPATUNGANBERSAMAKUPATUNGANBERSAMAKUPATUNGANBERSAMAKUPATUNGANBERSAMAKU",
                    style: TextStyle(
                        overflow: TextOverflow.fade,
                        color: Colors.white.withOpacity(0.05),
                        fontWeight: FontWeight.bold,
                        fontSize: 46),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://images.pexels.com/photos/2524145/pexels-photo-2524145.jpeg?auto=compress&cs=tinysrgb&w=400')),
                      //     color: Colors.grey),
                      // child: Image.network(
                      //   'https://selularid.b-cdn.net/wp-content/uploads/2022/05/st4.jpg',
                      //   fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
              child: ListView(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Text(
                  'Abadi • @abadisurio',
                  style: Theme.of(context).textTheme.bodyText2,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 16.0),
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
                margin: const EdgeInsets.only(bottom: 16.0),
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
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: SizedBox(
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
              ),
              const Text('''
🦋 JUAL NETFLIX PREMIUM 25K 🦋
Trusted and Legit! 💯
Guaranteed. 🍻

📌 Sharing Profile
☆ 1 hari 5k
☆ 1 minggu 15k
☆ 1 bulan 25k
☆ 3 bulan 58k

📌 Private Profile
☆ 1 bulan 38k
☆ 2 bulan 58k

📌 Private Account
☆ 1 bulan 165k
                ''')
            ],
          ))
        ],
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            OutlinedButton(onPressed: () {}, child: const Icon(Icons.chat)),
            const SizedBox(
              width: 8.0,
            ),
            Expanded(
              child: ElevatedButton(
                child: const Text("Gabung Coster"),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
