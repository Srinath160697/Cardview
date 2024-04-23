import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/models/note_model.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class NoteWidget extends StatelessWidget {
  final Note note;
  final VoidCallback onTap;
  final VoidCallback onLongPress;
  const NoteWidget(
      {Key? key,
      required this.note,
      required this.onTap,
      required this.onLongPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: onLongPress,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 6),
        child: Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(children: [
                  Row(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        child: Image.network(
                          'https://media.istockphoto.com/id/1511305945/photo/radar-screen-with-green-indication-on-black-background-close-up.jpg?s=1024x1024&w=is&k=20&c=F8IDH1hdmEHixDPC8B9mhY2Xl8DFEZkoxG-Yo5u4yKs=',
                          width: 80, // Set width to desired size
                          height: 80, // Set height to desired size
                          fit:
                              BoxFit.cover, // Adjust the fit property as needed
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            note.title,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          // const Padding(
                          //   padding:
                          //       EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                          //   child: Divider(
                          //     thickness: 1,
                          //   ),
                          // ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(note.description,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400)),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              RatingBar.builder(
                                initialRating: 3,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 0.3),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.teal,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                                itemSize: 18,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text("2.8(2821 views)"),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                    ),
                  ),
                ]),

                // Align(
                //   alignment: Alignment.center,
                //   child: Text(
                //     note.title,
                //     style: const TextStyle(
                //         fontSize: 18, fontWeight: FontWeight.bold),
                //   ),
                // ),
                // Text(
                //   note.title,
                //   style: const TextStyle(
                //       fontSize: 18, fontWeight: FontWeight.bold),
                // ),
                // const Padding(
                //   padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                //   child: Divider(
                //     thickness: 1,
                //   ),
                // ),
                // Text(note.description,
                //     style: const TextStyle(
                //         fontSize: 16, fontWeight: FontWeight.w400))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
