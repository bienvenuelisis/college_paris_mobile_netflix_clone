import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final FocusNode _focusNode = FocusNode();
  bool isExpanded = false;
  double largeur = 380;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: largeur,
            padding: const EdgeInsets.only(left: 4),
            height: 35,
            child: Stack(
              children: [
                TextField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(
                          color: Color.fromARGB(255, 140, 140, 140)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 93, 93, 93)),
                          borderRadius: BorderRadius.circular(15.0)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      fillColor: const Color.fromARGB(255, 61, 61, 61),
                      filled: true,
                      labelStyle: const TextStyle(color: Colors.white),
                      contentPadding: const EdgeInsets.only(left: 25),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 94, 94, 94),
                      ),
                      hintText: 'Search',
                    ),
                    focusNode: _focusNode,
                    onTap: () {
                      setState(() {
                        isExpanded = true;
                        largeur = 270;
                      });
                      _focusNode.requestFocus();
                    },
                    onTapOutside: (e) {
                      setState(() {
                        isExpanded = false;
                        largeur = 380;
                        _focusNode.unfocus();
                      });
                    }),
                if (isExpanded == true)
                  const Positioned(
                      top: 5,
                      left: 230,
                      child: Icon(
                        Icons.cancel_outlined,
                        color: Color.fromARGB(255, 155, 155, 155),
                      ))
              ],
            )),
        /* if (isExpanded == true)
          Container(
            margin: EdgeInsets.only(left: 10),
            child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    setState(() {
                      isExpanded = false;
                      largeur = 380;
                      _focusNode.unfocus();
                    });
                  });
                },
                style: ButtonStyle(
                    side: MaterialStateProperty.all(
                        BorderSide(color: Color.fromARGB(255, 0, 0, 0)))),
                child: Text(
                  'Cancel',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 129, 129, 129)),
                )),
          ) */
      ],
    );
  }
}
