import 'package:flutter/material.dart';
import 'package:pc_portal/model/recipe_storage.dart';
import '../styles/app_colors.dart';
import 'package:provider/provider.dart';
import '../model/model.dart';

class PartDetail extends StatefulWidget {
  final parts;
  const PartDetail({Key? key, this.parts}) : super(key: key);

  @override
  _PartDetailState createState() => _PartDetailState();
}

class _PartDetailState extends State<PartDetail> {
  @override
  Widget build(BuildContext context) {
    var _parts = Provider.of<RecipeProvider>(context);
    dynamic parts = widget.parts;
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () { _parts.add(parts);},
          child: const Icon(Icons.add),
          backgroundColor: AppColors.orange,
        ),
        extendBodyBehindAppBar: true,
        backgroundColor: AppColors.whiteshade,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(Icons.chevron_left, color: Colors.white, size: 35),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget> [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.orange,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  image: DecorationImage(image: AssetImage("assets/${parts["image"]}"))
                )
              )
            ),
            Expanded(
              child: Container(
                color: AppColors.whiteshade,
                child: ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(''),
                      Text(parts["name"],
                        style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      const Text(''),
                      Text('Type: ' + parts["type"]),
                      const Text(''),
                      const Text("Description",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      const Text(''),
                      Text(parts["description"]),
                    ]
                  )
                )
              )
            )
          ]
        )
      )
    );
  }
}