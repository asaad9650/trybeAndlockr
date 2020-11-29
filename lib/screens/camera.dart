import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Camera extends StatefulWidget {
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  // File imageFile;
  PickedFile _imageFile;
  final ImagePicker imagePicker = ImagePicker();

  _openGallery() async {
    var picture = await imagePicker.getImage(source: ImageSource.gallery);
    setState(() {
      _imageFile = picture;
    });
  }

  Widget _showPicture() {
    if (_imageFile == null) {
      return Center(
        child: Text("No image selected"),
      );
    } else {
      // return Image.file(File('20', _imageFile.path));
      // // return Image.network(
      // //   _imageFile.path,
      // //   height: 200,
      // //   width: 200,
      // // );
      // // return Image.file(
      // //   _imageFile,
      // //   height: 200,
      // //   width: 200,
      // // );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.647,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.white,
                  child: _showPicture(),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.09,
                  width: MediaQuery.of(context).size.width * 0.15,
                  child: GestureDetector(
                    onTap: () {
                      _openGallery();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                        image: DecorationImage(
                          image: AssetImage("assets//images/myimage.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      // padding: EdgeInsets.all(40),
                      // shape: RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.circular(10.0),
                      //   side: BorderSide(color: Colors.white),
                      // ),
                      // onPressed: () {},
                      child: Text("Gallery"),
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
