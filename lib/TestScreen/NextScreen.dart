import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100), // Sesuaikan tinggi yang diinginkan
        child: AppBar(
          automaticallyImplyLeading:
              false, // Menonaktifkan tombol kembali otomatis
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(right: 20), // Atur padding di sini
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back),
                ),
                Text(
                  'WaterHub untuk Sekolah',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Center(
        // child: ElevatedButton(
        //   child: const Text('To Third'),
        //   onPressed: () {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(builder: (context) => const TabBarDemo()),
        //     );
        //   },
        // ),
        child: Text("Text"),
      ),
    );
  }
}
