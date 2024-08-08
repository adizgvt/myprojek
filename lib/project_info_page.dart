import 'package:aimsprojectmanagement/project_location_page.dart';
import 'package:aimsprojectmanagement/task_add_action_page.dart';
import 'package:avatar_stack/avatar_stack.dart';
import 'package:avatar_stack/positions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/colors/gf_color.dart';
import 'package:getwidget/components/appbar/gf_appbar.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/getwidget.dart';

import 'data.dart';

class ProjectInfoPage extends StatefulWidget {
  const ProjectInfoPage({super.key});

  @override
  State<ProjectInfoPage> createState() => _ProjectInfoPageState();
}

class _ProjectInfoPageState extends State<ProjectInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paparan Projek', style: TextStyle(fontSize: 16),),
      ),
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Text(tasks[0]['project'], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),),
                      SizedBox(height: 10,),
                      AvatarStack(
                        height: 40,
                        width: 200,
                        settings: RestrictedPositions(
                          align: StackAlign.left,
                          maxCoverage: 0.3,
                          minCoverage: 0.3
                        ),
                        avatars: [
                          for (var n = 0; n < 8; n++)
                            NetworkImage('https://i.pravatar.cc/150?img=$n'),
                        ],
                      ),
                      // SizedBox(height: 10,),
                      // Row(
                      //   children: [
                      //     Image.network(tasks[0]['photos']['1'], width: 80,),
                      //     SizedBox(width: 10,),
                      //     Image.network(tasks[0]['photos']['2'], width: 80,),
                      //     SizedBox(width: 10,),
                      //     Image.network(tasks[0]['photos']['3'], width: 80,),
                      //   ],
                      // ),
                      SizedBox(height: 10,),
                      Text('Peratus siap', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: Colors.grey)),
                      SizedBox(height: 5,),
                      Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          Container(
                            height: 8,
                            width: MediaQuery.of(context).size.width,
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
                                width: (MediaQuery.of(context).size.width-80)/2,
                                decoration: BoxDecoration(
                                    gradient: linearColor,
                                    borderRadius: const BorderRadius.all(Radius.circular(4))
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Container(
                            width: 50,
                            height:50,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.grey.shade100,
                                      Colors.grey.shade100,
                                    ]
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(FontAwesomeIcons.solidFolder, size: 30, color: Colors.orange,),
                              ],
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            width: 50,
                            height:50,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.grey.shade100,
                                      Colors.grey.shade100,
                                    ]
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  child: Icon(Icons.location_on_sharp, size: 30, color: Colors.red,),
                                  onTap: (){
                                    Navigator.of(context).push(MaterialPageRoute(builder: (_) => ProjectLocationPage()));
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 40,
                  child: Container(
                    width: 180,
                    height: 25,
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.orange,
                          Colors.orangeAccent
                        ]),
                        borderRadius: BorderRadius.all(Radius.circular(5))
                    ),
                    child: Center(child: Text('DALAM PROSES', style: TextStyle(color: Colors.white),)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Senarai aktiviti', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                Container(
                  padding: const EdgeInsets.all(5),
                  //width: 30,
                  decoration: BoxDecoration(
                    gradient: linearColor,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) => const TaskAddActionPage()));
                    },
                    child: const Center(
                      child: Icon(Icons.add, color: Colors.white, size: 18,),
                    ),
                  ),

                )
              ],
            ),
            SizedBox(height: 10,),
            for(int i = 0; i < tasks.length; i++)...[
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                margin: EdgeInsets.symmetric(vertical: 5),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /*Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GFAvatar(
                            backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=8'),
                            maxRadius: 22,
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(tasks[0]['project_manager'], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                              Text(tasks[0]['position'], style: TextStyle(fontWeight: FontWeight.w300, fontSize: 10, color: Colors.black45),),
                              Text(tasks[0]['date'], style: TextStyle(fontWeight: FontWeight.w300, fontSize: 10, color: Colors.grey),)
                            ],
                          )
                        ],
                      ),
                      Icon(Icons.more_vert),
                    ],
                  ),*/
                    //Divider(thickness: 0.5,),
                    Text(tasks[i]['tugas'], style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12, color: Colors.black54),),
                    SizedBox(height: 5,),
                    /*Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Container(
                          height: 4,
                          width: MediaQuery.of(context).size.width,
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
                              height: 4,
                              width: (MediaQuery.of(context).size.width-80)/(4-i),
                              decoration: BoxDecoration(
                                  gradient: (MediaQuery.of(context).size.width-80)/(4-i) > 300 ? LinearGradient(colors: [
                                    Colors.green,
                                    Colors.lightGreen
                                  ]) : LinearGradient(colors: [
                                    Colors.orangeAccent,
                                    Colors.orange,
                                  ]),
                                  borderRadius: const BorderRadius.all(Radius.circular(4))
                              ),
                            ),
                          ],
                        )
                      ],
                    ),*/
                    SizedBox(height: 10,),
                    //Text(MediaQuery.of(context).size.width.toString()),
                    //Text(((MediaQuery.of(context).size.width-80)/(4-i)).toString()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AvatarStack(
                          height: 20,
                          width: 100,
                          settings: RestrictedPositions(
                              align: StackAlign.left,
                              maxCoverage: 0.3,
                              minCoverage: 0.3
                          ),
                          avatars: [
                            for (var n = 0; n < i+2; n++)
                              NetworkImage('https://i.pravatar.cc/150?img=$n'),
                          ],
                        ),
                        Icon(Icons.more_vert, size: 20,)
                      ],
                    )
                  ],
                ),
              ),
            ],
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
