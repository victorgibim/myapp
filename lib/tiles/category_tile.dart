import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25.0,
        backgroundColor: Colors.transparent,
        backgroundImage: NetworkImage("https://www.google.com/imgres?imgurl=https%3A%2F%2Fpm1.narvii.com%2F7203%2F4e700bb7b5ad1f8d5a0359bc30ad1bab2015365br1-959-1128v2_128.jpg&imgrefurl=https%3A%2F%2Faminoapps.com%2Fc%2Ffuturos-mangakas-mestres%2Fpage%2Fblog%2Fporque-o-vegeta-chama-o-goku-de-kakaroto%2FwYDD_PPHouBM2GDY2XVZjlVn04VvrN4g3B&docid=DA2heOuxyv-NOM&tbnid=TMLUNhU2M7u_eM%3A&vet=10ahUKEwiAl7um-6vkAhUrILkGHbspB7AQMwhAKAEwAQ..i&w=128&h=128&bih=568&biw=639&q=goku&ved=0ahUKEwiAl7um-6vkAhUrILkGHbspB7AQMwhAKAEwAQ&iact=mrc&uact=8"),
      ),
      title: Text("goku"),
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: (){
        
      },
    );
  }
}// imagens para a tela inicial