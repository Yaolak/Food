import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Page3 extends StatefulWidget {
  Page3({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  int likeCount = 0;
  int dislikeCount = 0;

  // ฟังก์ชันเปิด YouTube
  void _launchYouTube() async {
    final Uri url = Uri.parse('vnd.youtube://youtu.be/TT2bwSqYHo4?si=NdVX2H4TX2ZfT5KV');

    if (await canLaunch(url.toString())) {
      await launch(url.toString(), forceSafariVC: false, forceWebView: false);
    } else {
      // Fallback to open in a browser if the YouTube app is not installed
      throw 'ไม่สามารถเปิด URL ได้: $url';
    }
  }

  // ข้อมูลเมนู
  final Map<String, String> menuDetails = {
    'title': 'มักกะโรนีไส้กรอก',
    'image': 'pic/Macaroni.jpg',
    'description': 'มักกะโรนีไส้กรอก\n\nวิธีทำมักกะโรนีไส้กรอก\n1 ต้มมักกะโรนีในน้ำเดือดจนสุกแล้วสะเด็ดน้ำ\n 2 ผัดหอมใหญ่และกระเทียมในน้ำมันจนหอม ใส่ไส้กรอกผัดจนสุก \n 3 เติมซอสมะเขือเทศและปรุงรสด้วยเกลือและพริกไทย\n 4 ใส่มักกะโรนีที่ต้มแล้วลงไปผัดให้เข้ากัน',
    'price': '80 บาท',
  };

  // ฟังก์ชันเพิ่มคะแนนถูกใจ
  void _incrementLike() {
    setState(() {
      likeCount++;
    });
  }

  // ฟังก์ชันเพิ่มคะแนนไม่ถูกใจ
  void _incrementDislike() {
    setState(() {
      dislikeCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          // เพิ่มปุ่ม Home ใน AppBar
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.popUntil(context, (route) => route.isFirst);  // กลับไปยังหน้าหลัก
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // ปุ่มไปยังหน้าอื่น
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/page4');  // ไปยังหน้า page4
                  },
                  child: Text('ไปหน้าที่สี่'),
                ),
                SizedBox(height: 20),

                // แสดงรายละเอียดของเมนู
                Text(
                  'รายละเอียดเมนู: ${menuDetails['title']}',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Image.asset(
                  menuDetails['image']!,
                  width: MediaQuery.of(context).size.width * 0.8, // ปรับขนาดให้เหมาะสมกับหน้าจอ
                  height: MediaQuery.of(context).size.width * 0.5, // ปรับขนาดให้เหมาะสมกับหน้าจอ
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 10),
                Text(
                  'คำอธิบาย: ${menuDetails['description']}',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 10),
                Text(
                  'ราคา: ${menuDetails['price']}',
                  style: TextStyle(fontSize: 18, color: Colors.green),
                ),
                SizedBox(height: 20),

                // แสดงปุ่มถูกใจและไม่ถูกใจ
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.thumb_up),
                          onPressed: _incrementLike,
                        ),
                        Text('ถูกใจ: $likeCount'),
                      ],
                    ),
                    SizedBox(width: 30),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.thumb_down),
                          onPressed: _incrementDislike,
                        ),
                        Text('ไม่ถูกใจ: $dislikeCount'),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // ปุ่มเปิด YouTube
                ElevatedButton(
                  onPressed: _launchYouTube,  // เมื่อกดปุ่มจะเปิด YouTube
                  child: Text('เปิด YouTube'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page3(title: 'หน้าที่ 3'),
    );
  }
}
