import 'package:flutter/material.dart';

class CardContatoOrgao extends StatelessWidget {
  const CardContatoOrgao({
    super.key,
    required this.orgao,
    required this.contato,
    required this.selecionar,
  });

  final String? orgao;
  final String? contato;
  final Function() selecionar;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: selecionar,
      child: Container(
        width: size.width,
        height: size.height * 0.2,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red, width: 1.5),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              offset: Offset(4, 4),
              color: Color.fromARGB(255, 255, 30, 14),
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Toque aqui para realizar a ligação!",
              style: TextStyle(
                color: Color.fromARGB(255, 58, 2, 2),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            Text(
              contato ?? "",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 34,
                color: Colors.white, // Cor do texto (branco)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
