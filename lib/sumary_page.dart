import 'package:aimsprojectmanagement/data.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/card/gf_card.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';

class SummaryPage extends StatefulWidget {
  const SummaryPage({super.key});

  @override
  State<SummaryPage> createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(Icons.info),
                SizedBox(width: 10,),
                Text(
                  'Info Ringkas',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            projectTile(
                title: '26',
                subtitle: 'Keseluruhan Projek Aktif',
                image: 'https://www.herzing.edu/sites/default/files/styles/fp_960_480/public/2020-09/project-management-skills.jpg.webp?itok=rN-QQPq6',
                colorFilter: ColorFilter.mode(Colors.black45, BlendMode.colorBurn)
            ),
            projectTile(
                title: '1',
                subtitle: 'Projek Lewat Serah Kepada Pelanggan',
                image: 'https://imageio.forbes.com/specials-images/imageserve/5f5a2d56d0844debd57de789/0x0.jpg?format=jpg&height=900&width=1600&fit=bounds',
                colorFilter: ColorFilter.mode(Colors.black38, BlendMode.colorBurn)
            ),
            IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                    child: projectTile(
                        title: '0',
                        subtitle: 'Projek Lewat Tutup akaun',
                        image: 'https://thumbor.forbes.com/thumbor/fit-in/900x510/https://www.forbes.com/advisor/wp-content/uploads/2023/05/project-management-computer-screen.jpeg.jpg',
                        colorFilter: ColorFilter.mode(Colors.black45, BlendMode.colorBurn),
                        boxFit: BoxFit.fitHeight
                    ),
                  ),
                  Expanded(
                    child: projectTile(
                        title: '0',
                        subtitle: 'Belum Sah Diplan',
                        image: 'https://www.simplilearn.com/ice9/free_resources_article_thumb/Benefits_of_Project_Management.jpg',
                        colorFilter: ColorFilter.mode(Colors.black45, BlendMode.colorBurn),
                        boxFit: BoxFit.fitHeight
              
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: const Text(
                'Sentuh pada kotak di atas untuk melihat senarai projek atau kontrak berkaitan',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  projectTile({
    required String title,
    required String subtitle,
    required String image,
    required ColorFilter colorFilter,
    BoxFit boxFit = BoxFit.fitWidth
  }){
    return GFCard(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      showOverlayImage: true,
      boxFit: boxFit,
      colorFilter: colorFilter,
      imageOverlay: NetworkImage(image),
      elevation: 0,
      title: GFListTile(
        title: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(30))
          ),
          child: Center(
            child:Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
        subTitle: Text(
          '$subtitle',
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),
        ),
        padding: EdgeInsets.zero,
      ),
    );
  }
}
