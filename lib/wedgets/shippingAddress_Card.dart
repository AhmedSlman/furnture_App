import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ShippingAddress_Card extends StatelessWidget {
  const ShippingAddress_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 127,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Bruno Fernandes',
                  style: GoogleFonts.nunito(
                      fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Icon(
                  FontAwesomeIcons.pencil,
                  size: 20,
                ),
              )
            ],
          ),
          const Divider(
            height: 20,
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              '25 rue Robert Latouche, Nice, 06200, Côte D’azur, France',
              style: GoogleFonts.nunitoSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}
