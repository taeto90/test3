import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' hide Text;

class Editor extends StatefulWidget {

  @override

  State<Editor> createState() => _EditorState();
}

class _EditorState extends State<Editor> {
  QuillController _controller_quill = QuillController.basic();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        color: Colors.red,
        child: Container(
          color: Colors.white,
            margin: EdgeInsets.all(50),
            child: Column(
              children: [
                QuillToolbar.basic(controller: _controller_quill),
                Expanded(
                  child: Container(
                    child: QuillEditor.basic(
                      controller: _controller_quill,
                      readOnly: false, // true for view only mode
                    ),
                  ),
                )
              ],
            ),
          ),
      ),
      
    );
  }
}

