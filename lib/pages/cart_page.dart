import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        leading: FlatButton(
          onPressed: () {},
          child: Icon(Icons.arrow_back),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('My Cart',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
            ListView(
              shrinkWrap: true,
              children: [
                customCard(
                  'https://i.pinimg.com/564x/87/fd/fb/87fdfb80a8d125c58c15026cf517465f.jpg',
                  'test',
                ),
                SizedBox(height: 15),
                customCard(
                  'https://secure-render.nike.com/is/image/nikeid/?layer=0&src=ir(nikeidrender/af1LowEssSP20_v3?obj=/s/shadow/shad&show=&color=000000&obj=/s/g15&color=323136&show=&obj=/s/g14&color=323133&show=&obj=/s/g13&color=f5efff&show=&obj=/s/g12&color=eeeffa&show=&obj=/s/g17&color=eff0f8&show=&obj=/s/g16&color=2e2b2d&show=&obj=/s/g1/leather&color=2c2b2d&show=&obj=/s/g2/leather&color=2C2B2D&show=&obj=/s/g3/leather&color=2c2b2d&show=&obj=/s/g4/leather&color=2C2B2D&show=&obj=/s/g5/leather&color=2c2b2d&show=&obj=/s/g6/leather&color=2c2b2d&show=&obj=/s/g7/leather&color=2c2b2d&show=&obj=/s/g8/leather&color=2c2b2d&show=&obj=/s/g18/solid&color=fdf8f5&show=&obj=/s/g20&color=F5F4FF&show=&obj=/s/g23/OG&color=202022&show=&obj=/s/g19&color=fdf5f1&show=&obj=/s/g21/solid&color=25272A&show=&obj=/s&req=object&fmt=png-alpha&icc=AdobeRGB)bgc=f5f5f5&fmt=jpeg&qlt=90&posN=0,-0.1&icc=AdobeRGB&wid=864',
                  'TEST',
                ),
                SizedBox(height: 15),
                customCard(
                  'https://i.pinimg.com/564x/6b/f6/cc/6bf6ccb5077f8c6a2aac72132cc3ce66.jpg',
                  'TEST',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Back to Item search', style: TextStyle(fontSize: 18)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Card customCard(String image, String title) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Image(image: NetworkImage(image), fit: BoxFit.fill),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(title,
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
