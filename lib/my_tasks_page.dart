import 'package:aimsprojectmanagement/task_info_page.dart';
import 'package:avatar_stack/avatar_stack.dart';
import 'package:avatar_stack/positions.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';

import 'data.dart';
class MyTasksPage extends StatefulWidget {
  const MyTasksPage({super.key});

  @override
  State<MyTasksPage> createState() => _MyTasksPageState();
}

class _MyTasksPageState extends State<MyTasksPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          // TabBar(
          //   labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          //   indicatorWeight: 4,
          //   tabs: [
          //     Tab(child: Text('Baharu'),),
          //     Tab(child: Text('Belum Selesai'),),
          //     Tab(child: Text('Selesai'),),
          //   ],
          // ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: TextFormField(
              controller: null,
              style: const TextStyle(fontSize: 12),
              enabled: true,
              decoration: const InputDecoration(
                suffixIcon: Icon(Icons.search),
                hintText: 'Carian',
                //hintStyle: TextStyle(color: AppColor.black),
                //labelText: '',
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30)), borderSide: BorderSide.none),
              ),
              onTap: (){

              },
            ),
          ),
          Expanded(
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: tasks.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index){
                    return Container(
                      width: MediaQuery.of(context).size.width*0.9,
                      height: 160,
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
                              Text(tasks[index]['tugas'],
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    overflow: TextOverflow.ellipsis
                                ),
                                maxLines: 1,
                              ),
                              Divider(thickness: 0.5, height: 5,),
                              Text(tasks[index]['project'],
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    overflow: TextOverflow.ellipsis
                                ),
                                maxLines: 1,
                              ),
                              SizedBox(height: 10,),
                            ],
                          ),
                          subTitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //SizedBox(height: 40,),
                              Text(tasks[index]['tasks'], style: TextStyle(color: Colors.black45, fontSize: 13), maxLines: 2, overflow: TextOverflow.ellipsis,),
                            ],
                          ),
                        ),
                          Positioned(
                            top: 0,
                            left: 50,
                            child: Container(
                              width: 85,
                              height: 20,
                              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: index == 0 ? [Colors.green, Colors.lightGreen] : index == 1 ? [Colors.orange, Colors.orangeAccent] : [Colors.blueAccent, Colors.lightBlue]),
                                  borderRadius: BorderRadius.all(Radius.circular(5))
                              ),
                              child: Center(child: Text(index == 0 ? 'BAHARU' : index == 1 ? 'DALAM PROSES' : 'SELESAI', style: TextStyle(color: Colors.white, fontSize: 10),)),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
              ),
          )
        ],
      ),
    );
  }
}
