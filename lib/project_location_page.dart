import 'dart:math';
import 'package:aimsprojectmanagement/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:getwidget/colors/gf_color.dart';
import 'package:latlong2/latlong.dart';

class ProjectLocationPage extends StatefulWidget {
  const ProjectLocationPage({super.key});

  @override
  State<ProjectLocationPage> createState() => _ProjectLocationPageState();
}

class _ProjectLocationPageState extends State<ProjectLocationPage> {

  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      showAction();
    });
    super.initState();
  }

  showAction(){
    showModalBottomSheet(
        backgroundColor: GFColors.DARK,
        barrierColor: Colors.transparent,
        context: context,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(height: 20,),
              Text(
                'Ibu pejabat',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      gradient: linearColor,
                      borderRadius: BorderRadius.all(Radius.circular(25))
                    ),
                    child: Icon(Icons.directions, color: Colors.white, size: 24,),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        gradient: linearColor,
                        borderRadius: BorderRadius.all(Radius.circular(25))
                    ),
                    child: Icon(Icons.bookmark, color: Colors.white, size: 24,),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        gradient: linearColor,
                        borderRadius: BorderRadius.all(Radius.circular(25))
                    ),
                    child: Icon(Icons.share, color: Colors.white, size: 24,),
                  ),

                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      'https://2.bp.blogspot.com/_YUqyI2JjYX0/TGdEh5sZ3UI/AAAAAAAAAMs/MGv2D5Hf_MU/s1600/putrajaya01.jpg',
                      width: 100,
                    ),
                    SizedBox(width: 20,),
                    Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.location_pin, color: Colors.red,),
                            SizedBox(width: 5,),
                            Text(
                                'Perdana Putra,\nPersiaran Sultan Salahuddin \nAbdul Aziz Shah,\nPresint 1, 62502 Putrajaya',
                              style: TextStyle(color: Colors.white),
                              overflow: TextOverflow.ellipsis,

                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: const MapOptions(
              initialCenter: LatLng(2.926569, 101.650982),
              initialZoom: 13.0,
            ),
            children: [
              TileLayer(
                urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
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
                    point: const LatLng(2.938045, 101.692262),
                    child: Container(
                      child: const Icon(Icons.location_on, color: Colors.red, size: 40),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 120),
              child: TextFormField(
                controller: searchController,
                style: const TextStyle(fontSize: 12),
                enabled: true,
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  hintText: 'Carian Lokasi',
                  //hintStyle: TextStyle(color: AppColor.black),
                  //labelText: '',
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30)), borderSide: BorderSide.none),
                ),
                onTap: (){
                  showAction();
                },
              ),
          )
        ],
      ),
    );
  }
}
