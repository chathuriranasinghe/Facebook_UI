import 'package:flutter/material.dart';

class toolbar extends StatelessWidget {
  const toolbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 35, 10, 5),
      child: Row(
        children: [
          Text(
            "facebook",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Spacer(
            flex: 1,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 22,
            ),
            radius: 15,
          ),
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            child: Icon(
              Icons.messenger,
              color: Colors.white,
              size: 18,
            ),
            radius: 15,
          ),
        ],
      ),
    );
  }
}
