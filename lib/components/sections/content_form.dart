import 'package:flutter/material.dart';

class ContentForm extends StatefulWidget {

  ContentForm({
    Key? key,
  }) : super(key: key);

  @override
  State<ContentForm> createState() => _ContentFormState();
}

class _ContentFormState extends State<ContentForm> {
  // controllers
  TextEditingController urlController = TextEditingController();
  TextEditingController categoryController = TextEditingController();

  // GlobaKey
  final _formkey = GlobalKey<FormState>();

  // Validadores
  bool valueValidator(String? value) {
    if (value != null && value.isEmpty) {
      return true;
    }
    return false;
  }

  bool difficultyValidator(String? value) {
    if (value != null && value.isEmpty) {
      if (int.parse(value) > 5 || int.parse(value) < 1) {
        return true;
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFieldCustom(
            labelContent: 'URL:',
            hintContent: 'Ex: N3h5A0oAzsk',
            textValidator: 'Insira uma URL',
            controllerCustom: urlController,
          ),

          TextFieldCustom(
            labelContent: 'Categoria:',
            hintContent: 'Mobile, Front_end',
            textValidator: 'Insira uma categoria',
            controllerCustom: categoryController,
          ),
          // TextFieldCategory

          // Preview
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 13),
                  child: Text(
                    'Preview',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      urlController.text,
                      errorBuilder: (BuildContext context,
                          Object exception, StackTrace? stackTrace) {
                        return Image.asset(
                            'assets/images/icon_video.png');
                      },
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // ButtonCustom
          ButtonCustom(),
        ],
      ),
    );
  }
}

class TextFieldCustom extends StatelessWidget {
  final String labelContent;
  final String hintContent;
  final String textValidator;
  TextEditingController controllerCustom = TextEditingController();

  bool valueValidator(String? value) {
    if (value != null && value.isEmpty) {
      return true;
    }
    return false;
  }

  TextFieldCustom({
    Key? key,
    required this.labelContent,
    required this.hintContent,
    required this.textValidator,
    required this.controllerCustom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelContent,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 48,
            child: TextFormField(
              controller: controllerCustom,
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                hintText: hintContent,
                fillColor: Colors.blue,
                filled: true,
                // hintStyle: Theme.of(context).textTheme.bodySmall,
              ),
              validator: (value) {
                if (valueValidator(value)) {
                  return textValidator;
                }
                return null;
              },
              textAlign: TextAlign.left,
              // onChanged: (text) {
              //   setState(() {});
              // },
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonCustom extends StatelessWidget {
  TextEditingController controller = TextEditingController();

  ButtonCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.hardEdge,
        height: 48,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.blue,
        ),
        child: ElevatedButton(
          onPressed: () {
          },
          child: const Text(
            'Cadastrar',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ));
  }
}
