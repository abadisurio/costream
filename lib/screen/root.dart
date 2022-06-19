import 'package:costream/screen/explore.dart';
import 'package:costream/screen/home.dart';
import 'package:costream/screen/profile.dart';
import 'package:flutter/material.dart';

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);
  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    List bottomItems = [
      pageIndex == 0 ? Icons.home : Icons.home_outlined,
      pageIndex == 1 ? Icons.explore : Icons.explore_outlined,
      pageIndex == 2 ? Icons.person : Icons.person_outline,
    ];
    return Scaffold(
      appBar: getAppBar(),
      body: getBody(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 5,
          shadowColor: Colors.black.withOpacity(0.5),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(bottomItems.length, (index) {
                return IconButton(
                    onPressed: () {
                      setState(() {
                        pageIndex = index;
                      });
                    },
                    icon: Icon(bottomItems[index]));
              }),
            ),
          ),
        ),
      ),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: const [Home(), Explore(), Profile()],
    );
  }

  PreferredSizeWidget? getAppBar() {
    return AppBar(
      elevation: 0,
      title: Text("Costream", style: Theme.of(context).textTheme.headline4),
      centerTitle: true,
    );
  }
}
