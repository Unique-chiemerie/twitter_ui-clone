import 'package:flutter/material.dart';
import 'datamodels.dart';

class foryouScreen extends StatelessWidget {
  const foryouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tweet.length,
      itemBuilder: (context, index) => Container(
        height: 350,
        width: 350,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.green,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 370,
                  margin: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(0.5),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 43, 42, 42),
                        ),
                        child: tweet[index],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        margin: const EdgeInsets.all(0.5),
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 43, 42, 42),
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      const Icon(
                        Icons.more_vert_sharp,
                        color: Colors.grey,
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 70,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 43, 42, 42),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 270,
                  width: 300,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
