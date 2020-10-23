import 'package:flutter/material.dart';
import 'package:tailorapp/routing/const_routing.dart';
import 'package:tailorapp/screens/DetailImage.dart';
import 'package:tailorapp/widgets/MyCustomText.dart';
import 'package:tailorapp/utils/customColor.dart' as myColor;

class MyCustomProfile extends StatelessWidget {
  final String nip, name, email, address, ig, majors, image, title, tag;
  final IconData emailIcon, igIcon;

  const MyCustomProfile({
    Key key,
    this.nip,
    this.name,
    this.email,
    this.address,
    this.ig,
    this.majors,
    this.emailIcon,
    this.igIcon,
    this.image,
    this.title,
    this.tag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var urlImage = "profile";

    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 16.0,
          ),
          MyCustomText(
              text: title,
              textAlign: TextAlign.center,
              fontFamily: "Montserrat",
              fontSize: 14.0,
              fontWeight: FontWeight.w800,
              color: myColor.secondaryColor),
          SizedBox(
            height: 16.0,
          ),
          Divider(),
          GestureDetector(
            child: Hero(
              tag: tag,
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 24.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(120.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.15), blurRadius: 15)
                    ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(152.0),
                  child: Image.asset(
                    "assets/images/" + urlImage + "/" + image,
                    width: 156.0,
                    height: 156.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => DetailImage(
                          tag: profile,
                          urlImage: urlImage,
                          image: image,
                        ))),
          ),
          MyCustomText(
              text: nip,
              textAlign: TextAlign.center,
              fontFamily: "Montserrat",
              fontSize: 14.0,
              fontWeight: FontWeight.w800,
              color: myColor.secondaryColor),
          SizedBox(
            height: 16.0,
          ),
          MyCustomText(
              text: name,
              textAlign: TextAlign.center,
              fontFamily: "Montserrat",
              fontSize: 18.0,
              fontWeight: FontWeight.w800,
              color: myColor.secondaryColor),
          SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyCustomText(
                  text: email,
                  textAlign: TextAlign.center,
                  fontFamily: "Roboto",
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  color: myColor.secondaryColor),
              SizedBox(
                width: 8.0,
              ),
              Icon(
                emailIcon,
                color: myColor.primaryColor,
              )
            ],
          ),
          SizedBox(
            height: 8.0,
          ),
          MyCustomText(
              text: address,
              textAlign: TextAlign.center,
              fontFamily: "Roboto",
              fontSize: 13.0,
              color: myColor.secondaryColor),
          SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyCustomText(
                  text: ig,
                  textAlign: TextAlign.center,
                  fontFamily: "Roboto",
                  fontSize: 13.0,
                  fontWeight: FontWeight.w500,
                  color: myColor.secondaryColor),
              SizedBox(
                width: 8.0,
              ),
              Icon(
                igIcon,
                color: myColor.primaryColor,
              )
            ],
          ),
          SizedBox(
            height: 32.0,
          ),
          MyCustomText(
              text: majors,
              textAlign: TextAlign.center,
              fontFamily: "Roboto",
              fontSize: 16.0,
              color: myColor.secondaryColor),
          SizedBox(
            height: 56.0,
          )
        ],
      ),
    );
  }
}
