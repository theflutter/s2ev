import 'package:flutter/material.dart';

class BillPageWidget extends StatelessWidget {
  final String text1;
  final String text2;

  BillPageWidget({required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.all(8),
        ),
        Container(
          width: 366,
          height: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: const Color(0xffE4EAF1),
          ),
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Text(
                text1,
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Outfit',
                  fontWeight: FontWeight.w300,
                  color: Color(0xff324367),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        text2,
                        style: const TextStyle(
                          fontSize: 18,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w900,
                          color: Color(0xff324367),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Container(
                        width: 15,
                        height: 15,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffFC683F),
                        ),
                        child: const Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 10, // Adjust the size of the icon as needed
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
