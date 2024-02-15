
import 'package:flutter/material.dart';
import 'package:promilo/models/core/colors.dart';
import 'package:promilo/models/core/constants.dart';

class AuthourCard extends StatelessWidget {
  const AuthourCard({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: size.width*0.75,
        height: size.height / 4,
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(size.width / 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: primary,
                    radius: 20,
                    child: const CircleAvatar(
                      radius: 18,
                      backgroundImage: NetworkImage(
                        'https://e7.pngegg.com/pngimages/740/421/png-clipart-writer-author-writing-book-computer-icons-feathers-reading-monochrome.png',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Author',
                        style: boldPrimaryText(),
                      ),
                      Text(
                        '1,028 Meetups',
                        style: TextStyle(
                          color: greyColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const Divider(
                color: Color.fromARGB(78, 52, 51, 51),
              ),
              kheight(5),
              const Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://static.vecteezy.com/system/resources/previews/019/896/012/original/female-user-avatar-icon-in-flat-design-style-person-signs-illustration-png.png',
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/512/5556/5556499.png',
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://w7.pngwing.com/pngs/152/155/png-transparent-male-man-person-business-avatar-icon.png',
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5k5g4Wwq6QtMwiY_rMWrbWszaluyHIuN5yQ&usqp=CAU',
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(primary),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'See more',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
