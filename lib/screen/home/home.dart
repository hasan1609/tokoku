import 'package:flutter/material.dart';
import '../../size_config.dart';

class Home extends StatefulWidget {
  static String routeName = "/home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> nameIcons = [
    "Semua Kategori",
    "Belanja",
    "Top-Up & Tagihan",
    "Travel & Entertainment",
    "Keuangan",
    "Elektronik",
    "Handphone & Tablet",
    "Pulsa",
    "Pascabayar",
    "Emas"
  ];
  final List<String> iconPaths = [
    "https://ecs7.tokopedia.net/img/cache/100-square/attachment/2020/1/10/85531617/85531617_d87e8994-a76a-4ddd-851d-928ac775e91e.png",
    "https://ecs7.tokopedia.net/img/cache/100-square/attachment/2020/1/10/85531617/85531617_e418f310-4154-48b4-ab3c-28961b4e5c80.png",
    "https://ecs7.tokopedia.net/img/cache/100-square/attachment/2020/1/10/85531617/85531617_a569f893-c943-4b03-867a-11ad7477500d.png",
    "https://ecs7.tokopedia.net/img/cache/100-square/attachment/2020/1/10/85531617/85531617_743ac6d9-f89e-4ef8-866c-521e0011afce.png",
    "https://ecs7.tokopedia.net/img/cache/100-square/attachment/2020/1/5/77927732/77927732_ca25434e-4a80-4b19-bd9f-f7e7fec4126e.png",
    "https://ecs7.tokopedia.net/img/cache/100-square/attachment/2019/4/2/3127195/3127195_e6fcdfd3-313d-4b3d-969d-4e87944b0c29.png",
    "https://ecs7.tokopedia.net/img/cache/100-square/attachment/2019/4/2/3127195/3127195_1645f516-76ed-4bd2-a505-0d2c4f14d805.png",
    "https://ecs7.tokopedia.net/img/cache/100-square/attachment/2019/4/2/3127195/3127195_426c7c26-e0e7-47cb-ba5a-52241b625d71.png",
    "https://ecs7.tokopedia.net/img/cache/100-square/attachment/2019/4/2/3127195/3127195_084574be-ac35-40a3-b186-acf9f45b4d61.png",
    "https://ecs7.tokopedia.net/img/cache/100-square/attachment/2019/4/1/3127195/3127195_e48c6330-d588-4bca-95f5-c9e5a9fe3e4a.png",
  ];

  final Color _primaryAccentColor = Color(0xffe5e7e9);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          title: Padding(
            padding:
                EdgeInsets.symmetric(vertical: getPropertionateScreenWidth(2)),
            child: TextField(
              autofocus: false,
              decoration: InputDecoration(
                filled: true,
                hintText: "Apa Yang anda cari?",
                disabledBorder: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xffb5bbc5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.white),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                print("Ini favoritre");
              },
            ),
            IconButton(
              icon: Icon(Icons.mail),
              onPressed: () {
                print("Ini Inbox");
              },
            ),
          ],
        ),
        SliverToBoxAdapter(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xffffecdf),
            ),
            height: getPropertionateScreenWidth(100),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: nameIcons.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: 6),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 48,
                        width: 48,
                        child: Image.network(iconPaths[index]),
                      ),
                      Container(
                        width: 65,
                        child: Text(
                          nameIcons[index],
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 11),
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
