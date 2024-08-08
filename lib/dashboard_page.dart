import 'package:aimsprojectmanagement/project_info_page.dart';
import 'package:aimsprojectmanagement/task_info_page.dart';
import 'package:avatar_stack/avatar_stack.dart';
import 'package:avatar_stack/positions.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import 'const.dart';
import 'data.dart';
class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: ListView(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /*const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 40,),
              GFAvatar(
                  backgroundImage: NetworkImage('https://t3.ftcdn.net/jpg/06/07/84/82/240_F_607848231_w5iFN4tMmtI2woJjMh7Q8mGvgARnzHgQ.jpg'),
                  //backgroundColor: AppColor.black,
                  size: 45,
                  shape: GFAvatarShape.circle
              ),
              SizedBox(width: 10,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('NAMA PENGGUNA', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300), overflow: TextOverflow.visible,),
                    Text('UNIT', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),),
                    Text('JAWATAN', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),),
                    //Text('011-25472900', style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),),
                  ],
                ),
              ),
            ],
          ),*/
          Container(
            margin: EdgeInsets.all(16.0),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                gradient: linearColor,
                boxShadow: [
                  // BoxShadow(
                  //   color: Colors.black.withOpacity(0.15),
                  //   spreadRadius: 0,
                  //   blurRadius: 200, // Increased blur radius
                  //   offset: Offset(0, 4),
                  // )
                ]
            ),
            child: GFCard(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.transparent,

              margin: EdgeInsets.zero,
              elevation: 0,
              title: GFListTile(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                avatar: Padding(
                  padding: EdgeInsets.only(top:10, right: 10, left: 20),
                  child: GFAvatar(
                    radius: 25,
                    shape: GFAvatarShape.circle,
                    backgroundImage: NetworkImage(
                      'https://i.pravatar.cc/150?img=1',
                    ),
                  ),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(actions[0]['name'], style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white, fontSize: 14),),
                    Text(actions[0]['position'], style: TextStyle(fontWeight: FontWeight.w300, color: Colors.white70, fontSize: 12)),
                  ],
                ),
              ),
              content: Column(
                children: [
                  Divider(thickness: 0.5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Tugasan\nselesai', style: TextStyle(fontWeight: FontWeight.w300, color: Colors.white, fontSize: 12),),
                          Text('65', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25, color: Colors.white),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Tugasan\nsemasa', style: TextStyle(fontWeight: FontWeight.w300, color: Colors.white, fontSize: 12),),
                          Text('2', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25, color: Colors.white),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Projek\nsemasa', style: TextStyle(fontWeight: FontWeight.w300, color: Colors.white, fontSize: 12),),
                          Text('2', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25, color: Colors.white),)
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          title(
              'Tugasan semasa',
              Icon(Icons.timer)
          ),
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 1,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index){
                return Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  height: 130,
                  child: Stack(
                    children: [GFListTile(
                      onTap:(){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_)=> TaskInfoPage()));
                      },
                      margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                      radius: 20,
                      color: Colors.white,
                      shadow: BoxShadow(),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                          Text(tasks[index]['project'],
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                overflow: TextOverflow.ellipsis
                            ),
                            maxLines: 1,
                          ),
                        ],
                      ),
                      subTitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //SizedBox(height: 40,),
                          Text(tasks[index]['tasks'], style: TextStyle(color: Colors.black45, fontSize: 13), maxLines: 2, overflow: TextOverflow.ellipsis,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              AvatarStack(
                                height: 25,
                                width: 70,
                                settings: RestrictedPositions(
                                  align: StackAlign.left,
                                ),
                                avatars: [
                                  for (var n = 0; n < 4; n++)
                                    NetworkImage('https://i.pravatar.cc/150?img=$n'),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                      Positioned(
                        top: 0,
                        left: 50,
                        child: Container(
                          width: 80,
                          height: 25,
                          padding: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Colors.green,
                                Colors.lightGreen
                              ]),
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: Center(child: Text('Baharu', style: TextStyle(color: Colors.white),)),
                        ),
                      ),
                    ],
                  ),
                );
              }
          ),
          title(
            'Projek semasa',
            Icon(Icons.list),
          ),
          Container(
            height: 270,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              //gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 600),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.only(left: 30),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  height: 160,
                  child: InkWell(
                    child:  Column(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10)
                          ),
                          child: Image.network(
                            tasks[0]['photos']['1'],
                            height: 100,
                            width:MediaQuery.of(context).size.width*0.60,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Container(
                          width:MediaQuery.of(context).size.width*0.60,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Row(
                                    //   mainAxisAlignment: MainAxisAlignment.start,
                                    //   children: [
                                    //     AvatarStack(
                                    //       height: 25,
                                    //       width: 70,
                                    //       settings: RestrictedPositions(
                                    //         align: StackAlign.left,
                                    //       ),
                                    //       avatars: [
                                    //         for (var n = 0; n < 4; n++)
                                    //           NetworkImage('https://i.pravatar.cc/150?img=$n'),
                                    //       ],
                                    //     )
                                    //   ],
                                    // ),
                                    Text(tasks[0]['project'], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                                    const SizedBox(height: 10,),
                                    Stack(
                                      alignment: AlignmentDirectional.center,
                                      children: [
                                        Container(
                                          height: 8,
                                          width: 200,
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius: const BorderRadius.all(Radius.circular(4))
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 8,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                  gradient: linearColor,
                                                  borderRadius: const BorderRadius.all(Radius.circular(4))
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              //Container(height: 30, child: const VerticalDivider(color: Colors.grey, thickness: 2,)),
                            ],
                          ),
                        )
                      ],
                    ),
                    onTap: () async {
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) => const ProjectInfoPage()));
                    },
                  ),
                );
              },
              itemCount: projects.length,
            ),
          ),
          SizedBox(height: 50,),
        ],
      ),
    );
  }

  title(title, Icon icon){
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 20, bottom: 10),
      child: Row(
        children: [
          icon,
          const SizedBox(width: 10,),
          Text(
            title,
            style: const TextStyle(
                color: AppColor.black,
                fontWeight: FontWeight.w600,
                fontSize: 18
            ),
          ),
        ],
      ),
    );
  }
}
