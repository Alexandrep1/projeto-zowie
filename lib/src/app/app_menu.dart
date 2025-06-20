import 'package:flutter/material.dart';
import 'package:training/src/models/menu_model.dart';
import 'package:training/src/models/menu_mouse.dart';
import 'package:training/src/views/aboutMouse.dart';
import 'package:training/src/views/home_view.dart';

final List<MenuModel> variaveisDaHome = [
  MenuModel(
    title: "Home",
    icon: Icons.home,
    route: "/HomeView",
    page: const HomeView(),
  ),
];

final List<MenuMouse> variaveisDoMouse = [
  MenuMouse(
    title: "SegundaTela",
    icon: Icons.arrow_back,
    route: "/aboutMouse",
    page: const AboutMouse(),
  ),
];



