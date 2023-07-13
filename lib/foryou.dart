import 'package:flutter/material.dart';
import 'datamodels.dart';

class foryouScreen extends StatelessWidget {
  const foryouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tweet.length,
      itemBuilder: (context, index) => Container(
        height: 410,
        width: 350,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(10),
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
                        ),
                        child: tweet[index].dp,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.all(0.5),
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ), //this is where the user see's thier dp and the nonsense they tweeted
                        //it is written under a column to make arrangements for the main tweet and thier dp ,time and
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //make a row to show verification and alat
                            Row(
                              children: [
                                Text(
                                  tweet[index].username,
                                  style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 0.5,
                                ),
                                Container(
                                    height: 15,
                                    width: 15,
                                    child: tweet[index].Verified),
                                const SizedBox(
                                  width: 1,
                                ),
                                Text(
                                  tweet[index].handle,
                                  style: const TextStyle(
                                      fontSize: 10, color: Colors.grey),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  '.',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  tweet[index].time,
                                  style: const TextStyle(
                                      fontSize: 10, color: Colors.grey),
                                ),
                              ],
                            ),
//this is most likely going to hold the shit the user inputs
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              tweet[index].usertext,
                              style: const TextStyle(fontSize: 10),
                            ),
                          ],
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
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 270,
                  width: 300,
                  child: tweet[index].post,
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 70,
                ),
                Container(
                  height: 50,
                  width: 290,
                  margin: const EdgeInsets.all(10),
                  color: Colors.red,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 20,
                        width: 20,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.mode_comment_outlined),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                        width: 20,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.mode_comment_outlined),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                        width: 20,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.redo),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset('pics/like.png'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
