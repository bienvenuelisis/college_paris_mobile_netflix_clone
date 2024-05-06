import 'package:flutter/material.dart';
import 'package:netflix_clone/features/movies/states/counter_state.dart';

class AppBottomNavigationBar extends StatefulWidget {
  const AppBottomNavigationBar({
    super.key,
  });

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  @override
  void initState() {
    counterN.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: const Color.fromARGB(255, 0, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(
            Icons.home,
            color: Colors.grey,
          ),
          Stack(
            children: [
              const Icon(
                Icons.smart_display_rounded,
                color: Colors.grey,
              ),
              Positioned(
                right: 0,
                child: Container(
                    color: Colors.red,
                    child: Text("${counterN.value}",
                        style: const TextStyle(
                          fontSize: 9,
                          color: Colors.white,
                        ))),
              )
            ],
          ),
          const Icon(
            Icons.emoji_emotions_outlined,
            color: Colors.grey,
          ),
          InkWell(
            onTap: () {
              debugPrint("zer");
            },
            child: const Icon(
              Icons.search_sharp,
              color: Colors.grey,
            ),
          ),
          const Icon(
            Icons.download_for_offline_outlined,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
