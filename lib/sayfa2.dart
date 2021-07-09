import 'package:flutter/material.dart';
import 'package:souvenir_app/profilim.dart';
import 'package:souvenir_app/hakkinda.dart';
import 'package:souvenir_app/cikisyap.dart';
import 'package:souvenir_app/favorilerim.dart';
import 'package:souvenir_app/iletisim.dart';
import 'package:souvenir_app/sepetim.dart';
import 'package:souvenir_app/sayfa3.dart';
import 'package:souvenir_app/girisyap.dart';

class Sayfa2 extends StatefulWidget {
  @override
  _Sayfa2State createState() => _Sayfa2State();
}

class _Sayfa2State extends State<Sayfa2> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff369503),
        title: Text('Anasayfa'),

      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            ListTile(
              title: Text('Sepetim'),
              leading: Icon(Icons.shopping_basket),
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Sepetim()));
              },
            ),
            ListTile(
              title: Text('Favorilerim'),
              leading: Icon(Icons.favorite),
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Favorilerim()));
              },
            ),
            ListTile(
              title: Text('İletişim'),
              leading: Icon(Icons.mail),
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Iletisim()));
              },
            ),
            ListTile(
              title: Text('Profilim'),
              leading: Icon(Icons.person),
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Profilim()));
              },
            ),

          ],
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding:  EdgeInsets.only(left: 20,right: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>Girisyap()),
                  );
                },
                child: Text('Geri',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 20,right: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>Sayfa3()),
                  );
                },
                child: Text('İleri',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ),
            ),
            buildBanner(),
            buildBanner2(),
            buildBanner3(),
            buildBanner4(),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Hakkinda()),
                  );
                },
                child: Text('Hakkında'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Text('Anasayfaya Dön'),
              ),
            ),
            Padding (
                padding: const EdgeInsets.symmetric(vertical:16.0 ),
                child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cikisyap()),
                      );
                    },
                    icon: Icon(Icons.person),
                    label: Text('Çıkış Yap'))
            ),


          ],
        ),
      ),
    );
  }
}
Widget buildBanner(){
  return Padding(
    padding:  EdgeInsets.only(top:25),
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 24,right: 36,top: 14,bottom: 18),
      decoration: BoxDecoration(
        color:  Color(0xff000725),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image: AssetImage('assets/images/aciligonye.jpg'),
                height:30,
                width:100,
              ),
              Text('Açılı Gönye Cetveli',
                style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 5,),
              Text('14 ₺',
                style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Color(0xffd28005),
            ),
            child: Text('Sepete Ekle',style: TextStyle(color: Colors.white),),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Color(0xffd28005),
            ),
            child: Text('Favorilere Ekle',style: TextStyle(color: Colors.white),),
          ),

        ],
      ),
    ),
  );
}
Widget buildBanner2(){
  return Padding(
    padding:  EdgeInsets.only(top:8),
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 24,right: 36,top: 7,bottom: 7),
      decoration: BoxDecoration(
        color:  Color(0xff000725),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image: AssetImage('assets/images/cetvel.jpg'),
                height:30,
                width:100,
              ),
              Text('Cetvel',
                style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 5,),
              Text('10 ₺',
                style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Color(0xffd28005),
            ),
            child: Text('Sepete Ekle',style: TextStyle(color: Colors.white),),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Color(0xffd28005),
            ),
            child: Text('Favorilere Ekle',style: TextStyle(color: Colors.white),),
          ),

        ],
      ),
    ),
  );
}
Widget buildBanner3(){
  return Padding(
    padding:  EdgeInsets.only(top:8),
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 24,right: 36,top: 7,bottom: 7),
      decoration: BoxDecoration(
        color:  Color(0xff000725),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image: AssetImage('assets/images/pergel.jpg'),
                height:30,
                width:100,
              ),
              Text('Pergel',
                style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 2,),
              Text('8 ₺',
                style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Color(0xffd28005),
            ),
            child: Text('Sepete Ekle',style: TextStyle(color: Colors.white),),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Color(0xffd28005),
            ),
            child: Text('Favorilere Ekle',style: TextStyle(color: Colors.white),),
          ),

        ],
      ),
    ),
  );
}
Widget buildBanner4(){
  return Padding(
    padding:  EdgeInsets.only(top:8),
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 24,right: 36,top: 7,bottom: 7),
      decoration: BoxDecoration(
        color:  Color(0xff000725),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image: AssetImage('assets/images/tcetveli.jpg'),
                height:30,
                width:100,
              ),
              Text('T Cetveli',
                style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 2,),
              Text('22 ₺',
                style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Color(0xffd28005),
            ),
            child: Text('Sepete Ekle',style: TextStyle(color: Colors.white),),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Color(0xffd28005),
            ),
            child: Text('Favorilere Ekle',style: TextStyle(color: Colors.white),),
          ),

        ],
      ),
    ),
  );
}