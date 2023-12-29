import 'package:flutter/material.dart';

class SearchFeild extends StatelessWidget {
  const SearchFeild({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      width: size.width,
      height: size.height / 3,
      decoration: const BoxDecoration(color: Color(0xffCD5C08)),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            const Text(
              'اوقات شرعی',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            const SizedBox(height: 50),
            SizedBox(
              height: 55,
              child: TextField(
                textDirection: TextDirection.rtl,
                decoration: InputDecoration(
                  label: const Icon(
                    Icons.search_rounded,
                    color: Colors.black54,
                  ),
                  hintText: 'برای مثال : مشهد',
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
