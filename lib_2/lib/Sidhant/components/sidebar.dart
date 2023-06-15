import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);
  @override
  SideBarState createState() => SideBarState();
}

class SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: MediaQuery.of(context).size.height,
      color: Colors.black,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.home,
              color: Colors.white,
            ),
            iconSize: 15,
            padding: const EdgeInsets.symmetric(vertical: 10),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.cabin,
              color: Colors.white,
            ),
            iconSize: 15,
            padding: const EdgeInsets.symmetric(vertical: 10),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.currency_exchange,
              color: Colors.white,
            ),
            iconSize: 15,
            padding: const EdgeInsets.symmetric(vertical: 10),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notes,
              color: Colors.white,
            ),
            iconSize: 15,
            padding: const EdgeInsets.symmetric(vertical: 10),
          ),
          const Divider(
            thickness: 2,
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.book_online,
              color: Colors.white,
            ),
            iconSize: 15,
            padding: const EdgeInsets.symmetric(vertical: 10),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.message_sharp,
              color: Colors.white,
            ),
            iconSize: 15,
            padding: const EdgeInsets.symmetric(vertical: 10),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.chat_rounded,
              color: Colors.white,
            ),
            iconSize: 15,
            padding: const EdgeInsets.symmetric(vertical: 10),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.pages,
              color: Colors.white,
            ),
            iconSize: 15,
            padding: const EdgeInsets.symmetric(vertical: 10),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.book,
              color: Colors.white,
            ),
            iconSize: 15,
            padding: const EdgeInsets.symmetric(vertical: 10),
          ),
          //
          const Expanded(child: SizedBox(height: 100)),
          //
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  iconSize: 15,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.white,
                  ),
                  iconSize: 15,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
