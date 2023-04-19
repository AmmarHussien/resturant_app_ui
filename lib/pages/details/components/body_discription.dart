import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'header_body.dart';
import 'title_and_counter.dart';

class BodyDiscription extends StatelessWidget {
  const BodyDiscription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Arc(
      edge: Edge.TOP,
      arcType: ArcType.CONVEY,
      height: 30,
      child: Container(
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  top: 60,
                  bottom: 10,
                ),
                child: HeaderOfBody(),
              ),
              const TitleAndCounter(),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Text(
                  'Teste Our Hot Burger at low price , this is famous burger and you will love it. it will cost you at low price, we hope you will enjoy and order many times. ',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Delievery Time:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Icon(
                            CupertinoIcons.clock,
                            color: Colors.red,
                          ),
                        ),
                        Text(
                          '30 Minutes',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
