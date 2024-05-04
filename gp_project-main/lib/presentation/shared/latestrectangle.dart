import 'package:flutter/material.dart';

Widget latestrectangle(
    String image, String t1, String t2, String t3, String t4) {
  return Padding(
    padding: const EdgeInsets.only(top: 4, right: 4, left: 4, bottom: 4),
    child: Column(
      children: [
        Container(
          height: 145,
          width: 150,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xff497126),
            ),
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('${image}'),
            ),
          ),
        ),
        Row(
          children: [
            Column(
              children: [
                Text(
                  '${t1}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xff497126),
                  ),
                ),
                Text(
                  '${t2}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: Colors.grey.shade800,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10,
              height: 10,
            ),
            
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Text(
              '${t3}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '${t4}',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 10,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
