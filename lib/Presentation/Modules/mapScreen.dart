import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app2/constants/screens.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:sizer/sizer.dart';
class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    children: [
                      Icon(Icons.arrow_back, size: 20.sp,),
                      SizedBox(width: 18.w),

                      Text('hay elgamaa street ', style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.w500),),
                      Spacer(),
                      Icon(Icons.search, size: 20.sp,),

                    ]
                ),
              )
              ,
              width: 20.w,
              height: 5.h,
              decoration: BoxDecoration(
                color: Colors.white,


              ),

            ),
          ),
          Container(
            height: 80.h,
            width: 70.w,
            child: FlutterMap(
              options: MapOptions(
                center: LatLng(51.5, -0.09),
                zoom: 13.0,
              ),
              layers: [
                TileLayerOptions(
                  urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                  subdomains: ['a', 'b', 'c'],
                  attributionBuilder: (_) {

                    return

                      Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,

                        children: [
                          Align(
                            alignment:Alignment.topLeft,
                            child: CircleAvatar(
                              child: Icon(Icons.adjust_sharp,color: Colors.lightGreen,size: 20.sp,),
                            radius: 25,
                              backgroundColor: Colors.white,
                      ),
                          ),
                          SizedBox(height: 2.h,),
                          Container(

                            height: 6.h,
                            width: 60.w,
                            decoration: BoxDecoration(
                              color: Colors.lightGreen,
                              borderRadius: BorderRadius.circular(10),




                            ),
                    child: Center(
                          child: InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, adresspath);


                            },
                            child: Text('Confirm',style: TextStyle(color: Colors.white,fontSize: 15.sp),

                              ),
                          ),
                    ),
                    ),
                        ],
                      ));
                  },
                ),
                MarkerLayerOptions(
                  markers: [
                    Marker(
                      width: 80.0,
                      height: 80.0,
                      point: LatLng(51.5, -0.09),
                      builder: (ctx) =>
                          Container(
                            child: Icon(Icons.location_on,color: Colors.lightGreen,size: 55.sp,),


                          ),

                    ),

                  ],
                ),


              ],
            ),

          )
        ],
      ),
    );
  }

}