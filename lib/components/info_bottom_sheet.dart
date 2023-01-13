import 'package:flutter/material.dart';

class InfoBottomSheet extends StatelessWidget {
  const InfoBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(''),
                  )),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
