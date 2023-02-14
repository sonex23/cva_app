import 'package:cva_app/common/theme.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final Function onTapSubmit;
  const CustomTextField({
    Key? key,
    required this.onTapSubmit,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _messageController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            _buildCustomTextfield(
              controller: _nameController,
              label: 'Nama',
            ),
            const SizedBox(
              height: 12,
            ),
            _buildCustomTextfield(
                controller: _emailController,
                label: 'Email',
                inputType: TextInputType.emailAddress),
            const SizedBox(
              height: 12,
            ),
            _buildCustomTextfield(
              inputType: TextInputType.phone,
              controller: _phoneController,
              label: 'No HP/ Telp',
            ),
            const SizedBox(
              height: 12,
            ),
            _buildCustomTextfield(
              controller: _messageController,
              label: 'Tulis pesan..',
              isMultiLine: true,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  widget.onTapSubmit.call();
                }
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(kPrimaryColor),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 6,
                ),
                child: Text(
                  'Kirim',
                  style: whiteTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  Widget _buildCustomTextfield({
    required TextEditingController controller,
    required String label,
    bool isMultiLine = false,
    TextInputType? inputType,
  }) {
    return TextFormField(
      keyboardType: inputType ?? TextInputType.text,
      minLines: isMultiLine ? 3 : 1,
      maxLines: isMultiLine ? 5 : 1,
      controller: controller,
      style: blackTextStyle.copyWith(fontSize: 16, fontWeight: regular),
      cursorColor: kBlackColor,
      validator: (value) {
        if (value != null) {
          if (value == "" || value.isEmpty) {
            return "Data belum diisi";
          }
          return null;
        }
        return "Data belum diisi";
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 17,
        ),
        hintText: label,
        hintStyle: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: regular,
            color: kBlackColor.withOpacity(0.5)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: kInactiveColor)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: kPrimaryColor,
          ),
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
      ),
    );
  }
}
