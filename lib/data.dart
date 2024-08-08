import 'package:flutter/material.dart';

List<Map> tasks = [
  {
    'project_manager' : 'Rizal bin mohammad',
    'position' : 'Project Manager',
    'date' : '23 Julai 2023',
    'project_description' : 'asdasdsadasdsadsad',
    'tugas' : 'Latihan dan penyerahan projek kepada syarikat klien',
    'project' : 'PROJEK PENGGANTIAN DAN MENAIK TARAF SISTEM KUMBAHAN',
    'tasks' : ' • Latihan kepada kakitangan operasi\n • Penyediaan dokumen operasi dan penyelenggaraan\n • Penyerahan sistem kepada pihak pengurusan',
    'photos' : {
      '1' : 'https://www.icu.gov.my/img/akt24/Galeri%20Gambar11/1.jpg',
      '2' : 'https://www.icu.gov.my/img/akt24/Galeri%20Gambar11/2.jpg',
      '3' : 'https://www.icu.gov.my/img/akt24/Galeri%20Gambar11/5.jpg',
    }
  },
  {
    'project' : 'PROJEK PENGGANTIAN DAN MENAIK TARAF SISTEM KUMBAHAN',
    'tugas': 'Pengujian dan Pemeriksaan',
    'tasks' : ' • Pengujian fungsi setiap komponen sistem secara individu\n • Pengujian keseluruhan sistem dalam keadaan operasi sebenar\n • Pemeriksaan dan pensijilan oleh pihak berkuasa berkaitan',
  },
  {
    'project' : 'PROJEK PENGGANTIAN DAN MENAIK TARAF SISTEM KUMBAHAN',
    'tugas': 'Pemasangan Elektrikal dan Mekanikal',
    'tasks' : ' • Pemasangan sistem pam dan motor\n • Penyambungan elektrik dan kawalan automasi\n • Pengujian dan pengesahan sistem elektrik dan mekanikal',
  },
  {
    'project' : 'PROJEK PENGGANTIAN DAN MENAIK TARAF SISTEM KUMBAHAN',
    'tugas': 'Kerja Pembinaan','tasks' : 'lawatan pemantauan',
    'tasks' : ' • Penggalian dan pemasangan paip utama\n • Pemasangan tangki septik, tangki pengoksidaan, dan sistem penapisan\n • Pembinaan loji rawatan air kumbahan (jika perlu)\n • Pengujian tekanan paip dan sistem',
  },
];

List<Map> projects = [
  {
    'name' : 'PROJECT NAME 1',
    'description' : 'PROJECT DESCRIPTION 1',
    'image' : 'https://www.dagangnews.com/sites/default/files/inline-images/WhatsApp%20Image%202022-09-12%20at%207.18.27%20AM.jpeg'
  },
  {
    'name' : 'MV - AISHAH AIMS 4',
    'description' : 'TENDER WITH PETRONAS',
    'image' : 'https://photos.marinetraffic.com/ais/showphoto.aspx?shipid=708052'
  },
];

List<Map> actions = [
  {
    'name' : 'Nurul bin mamat',
    'position' : 'engineer ii',
    'action'  : 'latihan tot untuk penyerahan projek bersama bahagian pengurusan maklumat',
    'date'  : '24 Julai 2024',
    'photos'  : {
      '1': 'https://ewaste.doe.gov.my/wp-content/uploads/2022/06/1.jpeg',
    }
  }
];

LinearGradient linearColor = LinearGradient(colors: [Colors.blueAccent, Colors.lightBlue]);