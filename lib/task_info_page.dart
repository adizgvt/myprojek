import 'package:aimsprojectmanagement/task_add_action_page.dart';
import 'package:avatar_stack/avatar_stack.dart';
import 'package:avatar_stack/positions.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/colors/gf_color.dart';
import 'package:getwidget/components/appbar/gf_appbar.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';

import 'data.dart';

class TaskInfoPage extends StatefulWidget {
  const TaskInfoPage({super.key});

  @override
  State<TaskInfoPage> createState() => _TaskInfoPageState();
}

class _TaskInfoPageState extends State<TaskInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paparan Aktiviti', style: TextStyle(fontSize: 16),),
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
                      Text('Aktiviti', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: Colors.grey)),
                      Text(tasks[0]['tugas'], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.black),),
                      SizedBox(height: 10,),
                      Text('Ditugaskan oleh', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: Colors.grey),),
                      SizedBox(height: 5,),
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
                              Text('Rizal bin mohamad', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                              Text('Pengurus projek', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 10, color: Colors.black45),),
                              Text('23 Julai 2024', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 10, color: Colors.grey),)
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 20,),
                      Text('Projek', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: Colors.grey),),
                      Text(tasks[0]['project'], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.black),),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Image.network(tasks[0]['photos']['1'], width: 80,),
                          SizedBox(width: 10,),
                          Image.network(tasks[0]['photos']['2'], width: 80,),
                          SizedBox(width: 10,),
                          Image.network(tasks[0]['photos']['3'], width: 80,),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text(tasks[0]['tasks'], style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: Colors.black54)),
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Staf terlibat', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                              AvatarStack(
                                height: 30,
                                width: 100,
                                settings: RestrictedPositions(
                                  align: StackAlign.left,
                                ),
                                avatars: [
                                  for (var n = 0; n < 4; n++)
                                    NetworkImage('https://i.pravatar.cc/150?img=$n'),
                                ],
                              )

                            ],
                          ),
                          // Column(
                          //   crossAxisAlignment: CrossAxisAlignment.end,
                          //   children: [
                          //     Text('Tarikh tugas diberi', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                          //     Text('23 Julai 2024 ', style: TextStyle(fontWeight: FontWeight.w300, color: Colors.grey, fontSize: 12),),
                          //
                          //   ],
                          // ),
                          ],
                      ),
                      SizedBox(height: 30,),
                      Text('Sejarah tindakan', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade50,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GFAvatar(
                                      backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=1'),
                                      maxRadius: 22,
                                    ),
                                    SizedBox(width: 10,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(actions[0]['name'], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                                        Text(actions[0]['position'], style: TextStyle(fontWeight: FontWeight.w300, fontSize: 10, color: Colors.black45),),
                                        Text(actions[0]['date'], style: TextStyle(fontWeight: FontWeight.w300, fontSize: 10, color: Colors.grey),)
                                      ],
                                    )
                                  ],
                                ),
                                Icon(Icons.more_vert),
                              ],
                            ),
                            Divider(thickness: 0.5,),
                            Text(actions[0]['action'], style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),),

                            SizedBox(height: 10,),
                            Image.network(actions[0]['photos']['1'], height: 40,),
                            SizedBox(height: 10,),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 30,
                        decoration: BoxDecoration(
                          gradient: linearColor,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (_) => const TaskAddActionPage()));
                          },
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.add, color: Colors.white, size: 18,),
                                SizedBox(width: 10,),
                                Text(
                                  'Tambah tindakan',
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 40,
                  child: Container(
                    width: 120,
                    height: 25,
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.orangeAccent,
                          Colors.orange
                        ]),
                        borderRadius: BorderRadius.all(Radius.circular(5))
                    ),
                    child: Center(child: Text('DALAM PROSES', style: TextStyle(color: Colors.white),)),
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
