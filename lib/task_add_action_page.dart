import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:latlong2/latlong.dart';
import 'data.dart';

class TaskAddActionPage extends StatefulWidget {
  const TaskAddActionPage({super.key});

  @override
  State<TaskAddActionPage> createState() => _TaskAddActionPageState();
}

class _TaskAddActionPageState extends State<TaskAddActionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah tindakan', style: TextStyle(fontSize: 16),),
      ),
      backgroundColor: Colors.grey.shade100,
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Text('Tugas', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),),
                Text(tasks[0]['tugas'], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.black),),
                SizedBox(height: 20,),
                Text('Projek', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),),
                Text(tasks[0]['project'], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.black),),
                SizedBox(height: 20,),
                Text('Catatan', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),),
                SizedBox(height: 10,),
                TextFormField(
                  maxLines: 5,
                  style: const TextStyle(fontSize: 12),
                  enabled: true,
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)), borderSide: BorderSide.none),
                  ),
                ),
                SizedBox(height: 20,),
                Text('Lokasi', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),),
                SizedBox(height: 10,),
                Container(
                  height: 125,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: FlutterMap(
                      options: const MapOptions(
                        initialCenter: LatLng(2.926569, 101.650982),
                        initialZoom: 13.0,
                      ),
                      children: [
                        TileLayer(
                          urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              width: 80.0,
                              height: 80.0,
                              point: const LatLng(2.926569, 101.650982),
                              child: Container(
                                child: const Icon(Icons.location_on, color: Colors.grey, size: 40),
                              ),
                            ),
                            Marker(
                              width: 80.0,
                              height: 80.0,
                              point: const LatLng(2.916569, 101.652982),
                              child: Container(
                                child: const Icon(Icons.location_on, color: Colors.grey, size: 40),
                              ),
                            ),
                            Marker(
                              width: 80.0,
                              height: 80.0,
                              point: const LatLng(2.922569, 101.630982),
                              child: Container(
                                child: const Icon(Icons.location_on, color: Colors.grey, size: 40),
                              ),
                            ),
                            Marker(
                              width: 80.0,
                              height: 80.0,
                              point: const LatLng(2.923569, 101.640982),
                              child: Container(
                                child: const Icon(Icons.location_on, color: Colors.red, size: 40),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text('Fail', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),),
                SizedBox(height: 10,),
                Container(
                  width: 80,
                  height:80,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.grey.shade300,
                        Colors.grey.shade300,
                      ]
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add, size: 20, color: Colors.white,),
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
          )
        ],
      ),
    );
  }
}
