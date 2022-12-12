import 'package:flutter/material.dart';
import 'package:supermentes/models/collection.dart';
import 'package:supermentes/models/difficult.dart';
import 'package:supermentes/models/game_settings.dart';
import 'package:supermentes/models/play_card.dart';
import 'package:supermentes/shared/buttons.dart';
import 'package:supermentes/shared/card.dart';
import 'package:supermentes/shared/containers.dart';
import 'package:supermentes/views/play/play_screen.dart';

class DifficultScreen extends StatefulWidget {
  static String routeName = "/difficult";

  const DifficultScreen({Key? key}) : super(key: key);

  @override
  State<DifficultScreen> createState() => _DifficultScreenState();
}

class _DifficultScreenState extends State<DifficultScreen> {
  int difficult = Difficult.easy;
  int collection = 1;

  final List<Collection> collections = const [
    Collection(
      id: 1,
      name: "Estados brasileiros",
      description: "Estados brasileiros com dados do IBGE(2010)",
      attributes: [
        "População",
        "Área",
        "Densidade",
        "PIB (milhões)",
        "IDH",
      ],
      cards: [
        PlayCard(
          id: 1,
          name: "Acre",
          attributes: [733559, 164123, 4, 16476, 0.719],
          curiosities: [
            "O Acre pertencia à Bolívia.",
            "O Brasil comprou o Acre em 1903.",
            "A capital do Acre é Rio Branco.",
          ],
        ),
        PlayCard(
          id: 2,
          name: "Alagoas",
          attributes: [3120494, 27843, 112, 63202, 0.683],
          curiosities: [
            "O nome Alagoas vem do tupi-guarani, que significa \"águas profundas\".",
            "A capital de Alagoas é Maceió.",
            "Alagoas é o estado mais seco do Brasil.",
          ],
        ),
        PlayCard(
          id: 3,
          name: "Amapá",
          attributes: [669526, 142470, 4, 18469, 0.740],
          curiosities: [],
        ),
        PlayCard(
          id: 4,
          name: "Amazonas",
          attributes: [3483985, 1559167, 2, 116019, 0.733],
        ),
        PlayCard(
          id: 5,
          name: "Bahia",
          attributes: [14016906, 564760, 24, 305321, 0.714],
        ),
        PlayCard(
          id: 6,
          name: "Ceará",
          attributes: [8452381, 148894, 56, 166915, 0.735],
        ),
        PlayCard(
          id: 7,
          name: "Distrito Federal",
          attributes: [2570160, 5760, 444, 265847, 0.850],
        ),
        PlayCard(
          id: 8,
          name: "Espírito Santo",
          attributes: [3514952, 46074, 76, 138446, 0.772],
        ),
        PlayCard(
          id: 9,
          name: "Goiás",
          attributes: [6003788, 340203, 17, 224126, 0.769],
        ),
        PlayCard(
          id: 10,
          name: "Maranhão",
          attributes: [6574789, 329642, 19, 106916, 0.687],
        ),
        PlayCard(
          id: 11,
          name: "Mato Grosso",
          attributes: [3035122, 903207, 3, 178650, 0.774],
        ),
        PlayCard(
          id: 12,
          name: "Mato Grosso do Sul",
          attributes: [2449024, 357145, 6, 122628, 0.766],
        ),
        PlayCard(
          id: 13,
          name: "Minas Gerais",
          attributes: [19597330, 586521, 33, 682786, 0.787],
        ),
        PlayCard(
          id: 14,
          name: "Pará",
          attributes: [7581051, 1245870, 6, 215936, 0.698],
        ),
        PlayCard(
          id: 15,
          name: "Paraíba",
          attributes: [3766528, 56467, 66, 70292, 0.722],
        ),
        PlayCard(
          id: 16,
          name: "Paraná",
          attributes: [10444526, 199298, 52, 487931, 0.792],
        ),
        PlayCard(
          id: 17,
          name: "Pernambuco",
          attributes: [8796448, 98067, 89, 193307, 0.727],
        ),
        PlayCard(
          id: 18,
          name: "Piauí",
          attributes: [3273227, 251756, 12, 56391, 0.697],
        ),
        PlayCard(
          id: 19,
          name: "Rio de Janeiro",
          attributes: [15989929, 43750, 365, 753824, 0.796],
        ),
        PlayCard(
          id: 20,
          name: "Rio Grande do Norte",
          attributes: [3168027, 52809, 59, 71577, 0.731],
        ),
        PlayCard(
          id: 21,
          name: "Rio Grande do Sul",
          attributes: [10693929, 281707, 37, 470942, 0.788],
        ),
        PlayCard(
          id: 22,
          name: "Rondônia",
          attributes: [1562409, 237765, 6, 51599, 0.725],
        ),
        PlayCard(
          id: 23,
          name: "Roraima",
          attributes: [450479, 223644, 2, 16024, 0.752],
        ),
        PlayCard(
          id: 24,
          name: "Santa Catarina",
          attributes: [6248436, 95730, 65, 349275, 0.808],
        ),
        PlayCard(
          id: 25,
          name: "São Paulo",
          attributes: [41262199, 248219, 166, 2377639, 0.826],
        ),
        PlayCard(
          id: 26,
          name: "Sergipe",
          attributes: [2068017, 21925, 94, 45410, 0.702],
        ),
        PlayCard(
          id: 27,
          name: "Tocantins",
          attributes: [1383445, 277466, 4, 43650, 0.743],
        ),
      ],
    ),
    Collection(
      id: 2,
      name: "JKHGFEIugeuo ouehfoehs",
      description: "Estados brasileiros com dados do IBGE(2010)",
      attributes: [
        "População",
        "Área",
        "Densidade",
        "PIB (milhões)",
        "IDH",
      ],
      cards: [
        PlayCard(
          id: 1,
          name: "Acre",
          attributes: [733559, 164123, 4, 16476, 0.719],
          curiosities: [
            "O Acre pertencia à Bolívia.",
            "O Brasil comprou o Acre em 1903.",
            "A capital do Acre é Rio Branco.",
          ],
        ),
        PlayCard(
          id: 2,
          name: "Alagoas",
          attributes: [3120494, 27843, 112, 63202, 0.683],
          curiosities: [
            "O nome Alagoas vem do tupi-guarani, que significa \"águas profundas\".",
            "A capital de Alagoas é Maceió.",
            "Alagoas é o estado mais seco do Brasil.",
          ],
        ),
        PlayCard(
          id: 3,
          name: "Amapá",
          attributes: [669526, 142470, 4, 18469, 0.740],
          curiosities: [],
        ),
        PlayCard(
          id: 4,
          name: "Amazonas",
          attributes: [3483985, 1559167, 2, 116019, 0.733],
        ),
        PlayCard(
          id: 5,
          name: "Bahia",
          attributes: [14016906, 564760, 24, 305321, 0.714],
        ),
        PlayCard(
          id: 6,
          name: "Ceará",
          attributes: [8452381, 148894, 56, 166915, 0.735],
        ),
        PlayCard(
          id: 7,
          name: "Distrito Federal",
          attributes: [2570160, 5760, 444, 265847, 0.850],
        ),
        PlayCard(
          id: 8,
          name: "Espírito Santo",
          attributes: [3514952, 46074, 76, 138446, 0.772],
        ),
        PlayCard(
          id: 9,
          name: "Goiás",
          attributes: [6003788, 340203, 17, 224126, 0.769],
        ),
        PlayCard(
          id: 10,
          name: "Maranhão",
          attributes: [6574789, 329642, 19, 106916, 0.687],
        ),
        PlayCard(
          id: 11,
          name: "Mato Grosso",
          attributes: [3035122, 903207, 3, 178650, 0.774],
        ),
        PlayCard(
          id: 12,
          name: "Mato Grosso do Sul",
          attributes: [2449024, 357145, 6, 122628, 0.766],
        ),
        PlayCard(
          id: 13,
          name: "Minas Gerais",
          attributes: [19597330, 586521, 33, 682786, 0.787],
        ),
        PlayCard(
          id: 14,
          name: "Pará",
          attributes: [7581051, 1245870, 6, 215936, 0.698],
        ),
        PlayCard(
          id: 15,
          name: "Paraíba",
          attributes: [3766528, 56467, 66, 70292, 0.722],
        ),
        PlayCard(
          id: 16,
          name: "Paraná",
          attributes: [10444526, 199298, 52, 487931, 0.792],
        ),
        PlayCard(
          id: 17,
          name: "Pernambuco",
          attributes: [8796448, 98067, 89, 193307, 0.727],
        ),
        PlayCard(
          id: 18,
          name: "Piauí",
          attributes: [3273227, 251756, 12, 56391, 0.697],
        ),
        PlayCard(
          id: 19,
          name: "Rio de Janeiro",
          attributes: [15989929, 43750, 365, 753824, 0.796],
        ),
        PlayCard(
          id: 20,
          name: "Rio Grande do Norte",
          attributes: [3168027, 52809, 59, 71577, 0.731],
        ),
        PlayCard(
          id: 21,
          name: "Rio Grande do Sul",
          attributes: [10693929, 281707, 37, 470942, 0.788],
        ),
        PlayCard(
          id: 22,
          name: "Rondônia",
          attributes: [1562409, 237765, 6, 51599, 0.725],
        ),
        PlayCard(
          id: 23,
          name: "Roraima",
          attributes: [450479, 223644, 2, 16024, 0.752],
        ),
        PlayCard(
          id: 24,
          name: "Santa Catarina",
          attributes: [6248436, 95730, 65, 349275, 0.808],
        ),
        PlayCard(
          id: 25,
          name: "São Paulo",
          attributes: [41262199, 248219, 166, 2377639, 0.826],
        ),
        PlayCard(
          id: 26,
          name: "Sergipe",
          attributes: [2068017, 21925, 94, 45410, 0.702],
        ),
        PlayCard(
          id: 27,
          name: "Tocantins",
          attributes: [1383445, 277466, 4, 43650, 0.743],
        ),
      ],
    ),
    Collection(
      id: 3,
      name: "Demografia por Países",
      description: "Dados demográficos de Países",
      image: "assets/images/paises.png",
      attributes: [
      "População Total",
      "Taxa Natalidade (por mil)",
      "Taxa Mortalidade (por mil)",
      "Densidade Demográfica (Hab/km^2)",
      ],
      cards: [
        PlayCard(
            id: 1,
            name: "China",
            image: "assets/images/paises/china.png",
            attributes: [1424929781, 10.5, 7.1, 148.53],
        ),
        PlayCard(
            id: 2,
            name: "Índia",
            image: "assets/images/paises/india.png",
            attributes: [1396387127, 17.644, 7.265, 473.42],
        ),
        PlayCard(
            id: 3,
            name: "Estados Unidos",
            image: "assets/images/paises/usa.png",
            attributes: [335942004, 11.4, 8.7, 36.84],
        ),
        PlayCard(
            id: 4,
            name: "Indonésia",
            image: "assets/images/paises/indonesia.png",
            attributes: [271857971, 17.746, 6,51, 143.26],
        ),
        PlayCard(
            id: 5,
            name: "Paquistão",
            image: "assets/images/paises/paquistao.png",
            attributes: [227196741, 27.841, 6.893, 300.18],
        ),
        PlayCard(
            id: 6,
            name: "Brasil",
            image: "assets/images/paises/brasil.png",
            attributes: [213196304, 13.703, 6.531, 25.64],
        ),
        PlayCard(
            id: 7,
            name: "Nigéria",
            image: "assets/images/paises/nigeria.png",
            attributes: [208327405, 37.446, 11.63, 234.31],
        ),
        PlayCard(
            id: 8,
            name: "Bangladesh",
            image: "assets/images/paises/bangladesj.png",
            attributes: [167420951, 17.868, 5.526, 1301.04],
        ),
        PlayCard(
            id: 9,
            name: "Russia",
            image: "assets/images/paises/russia.png",
            attributes: [145617329, 9.8, 13.3, 8.89],
        ),
        PlayCard(
            id: 10,
            name: "México",
            image: "assets/images/paises/mexico.png",
            attributes: [125998302, 17.297, 6.082, 64.67],
        ),
        PlayCard(
            id: 11,
            name: "Japão",
            image: "assets/images/paises/japao.png",
            attributes: [125244761, 7.4, 11.0, 333.82],
        ),
        PlayCard(
            id: 12,
            name: "Etiópia",
            image: "assets/images/paises/etiopia.png",
            attributes: [117190911, 31.839, 6.418, 114.12],
        ),
        PlayCard(
            id: 13,
            name: "Filipinas",
            image: "assets/images/paises/filipinas.png",
            attributes: [117190911,, 21.166, 5.92, 367.94],
        ),
        PlayCard(
            id: 14,
            name: "Egito",
            image: "assets/images/paises/egito.png",
            attributes: [107465134, 31.896, 6.551, 114.12],
        ),
        PlayCard(
            id: 15,
            name: "Vietnã",
            image: "assets/images/paises/vietna.png",
            attributes: [96648685, 16.745, 6.38, 305.60],
        ),
        PlayCard(
            id: 16,
            name: "Congo",
            image: "assets/images/paises/congo.png",
            attributes: [92853165, 40.639, 9.292, 39.66],
        ),
        PlayCard(
            id: 17,
            name: "Irã",
            image: "assets/images/paises/ira.png",
            attributes: [87290193, 18.738, 4.843, 52.57],
        ),
        PlayCard(
            id: 18,
            name: "Turquia",
            image: "assets/images/paises/turquia.png",
            attributes: [84135428, 16.027, 5.412, 107.60],
        ),
        PlayCard(
            id: 19,
            name: "Alemanha",
            image: "assets/images/paises/alemanha.png",
            attributes: [83328988, 9.5, 11.5, 237.83],
        ),
        PlayCard(
            id: 20,
            name: "Tailândia",
            image: "assets/images/paises/tailandia.png",
            attributes: [71475665, 10.334, 7.666, 139.22],
        ),
        PlayCard(
            id: 21,
            name: "Reino Unido",
            image: "assets/images/paises/uk.png",
            attributes: [67059474, 11.0, 9.2, 273.68],
        ),
      ],
    ),
    Collection(
      id: 4,
      name: "Tabela Periódica",
      description: "Elementos químicos da tabela periódica",
      image: "assets/images/elementos.png",
      attributes: [
        "Numero Atômico",
        "Massa Atômica",
        "Elétrons na Ultima Camada",
        "Camadas Eletrônicas",
      ],
      cards: [
        PlayCard(
          id: 1,
          name: "Hidrogênio (H)",
          image: "assets/images/elementos/hidrogenio.png",
          attributes: [1, 1.001, 1, 1],
        ),
        PlayCard(
          id: 2,
          name: "Helio (He)",
          image: "assets/images/elementos/helio.png",
          attributes: [2, 4.003, 2, 1],
        ),
        PlayCard(
          id: 3,
          name: "Lítio (Li)",
          image: "assets/images/elementos/litio.png",
          attributes: [3, 6.941, 1, 2],
        ),
        PlayCard(
          id: 4,
          name: "Berílio (Be)",
          image: "assets/images/elementos/berilio.png",
          attributes: [4, 9.0122, 2, 2],
        ),
        PlayCard(
          id: 5,
          name: "Boro (B)",
          image: "assets/images/elementos/boro.png",
          attributes: [5, 19.811, 3, 2],
        ),
        PlayCard(
          id: 6,
          name: "Carbono (C)",
          image: "assets/images/elementos/carbono.png",
          attributes: [6, 12.010, 4, 2],
        ),
        PlayCard(
          id: 7,
          name: "Nitrogênio (N)",
          image: "assets/images/elementos/nitrogenio.png",
          attributes: [7, 14.006, 5, 2],
        ),
        PlayCard(
          id: 8,
          name: "Oxigênio (O)",
          image: "assets/images/elementos/oxigenio.png",
          attributes: [8, 15.999, 6, 2],
        ),
        PlayCard(
          id: 9,
          name: "Flúor (F)",
          image: "assets/images/elementos/fluor.png",
          attributes: [9, 18,998, 7, 2],
        ),
        PlayCard(
          id: 10,
          name: "Neônio (Ne)",
          image: "assets/images/elementos/neonio.png",
          attributes: [10, 20.179, 8, 2],
        ),
        PlayCard(
          id: 11,
          name: "Sódio (Na)",
          image: "assets/images/elementos/sodio.png",
          attributes: [11, 22.989, 1, 3],
        ),
        PlayCard(
          id: 12,
          name: "Magnésio (Mg)",
          image: "assets/images/elementos/magnesio.png",
          attributes: [12, 24.305, 2, 3],
        ),
        PlayCard(
          id: 13,
          name: "Aluminio (Al)",
          image: "assets/images/elementos/aluminio.png",
          attributes: [13, 26.9815, 3, 3],
        ),
        PlayCard(
          id: 14,
          name: "Silílio (Si)",
          image: "assets/images/elementos/silicio.png",
          attributes: [14, 28.085, 4, 3],
        ),
        PlayCard(
          id: 15,
          name: "Fósforo (P)",
          image: "assets/images/elementos/fosforo.png",
          attributes: [15, 30.973, 5, 3],
        ),
        PlayCard(
          id: 16,
          name: "Enxofre (S)",
          image: "assets/images/elementos/enxofre.png",
          attributes: [16, 32.065, 6, 3],
        ),
        PlayCard(
          id: 17,
          name: "Cloro (Cl)",
          image: "assets/images/elementos/cloro.png",
          attributes: [17, 35.453, 7, 3],
        ),
        PlayCard(
          id: 18,
          name: "Argonio (Ar)",
          image: "assets/images/elementos/argonio.png",
          attributes: [18, 39.453, 8, 3],
        ),
        PlayCard(
          id: 19,
          name: "Potássio (K)",
          image: "assets/images/elementos/potassio.png",
          attributes: [19, 39.098, 1, 4],
        ),
        PlayCard(
          id: 20,
          name: "Cálcio (Ca)",
          image: "assets/images/elementos/calcio.png",
          attributes: [20, 40.078, 2, 4],
        ),
        PlayCard(
          id: 21,
          name: "Escândio (Sc)",
          image: "assets/images/elementos/escandio.png",
          attributes: [21, 44.956, 2, 4],
        ),
        PlayCard(
          id: 22,
          name: "Titânio (Ti)",
          image: "assets/images/elementos/titanio.png",
          attributes: [22, 47.867, 2, 4],
        ),
        PlayCard(
          id: 23,
          name: "Vanádio (V)",
          image: "assets/images/elementos/vanadio.png",
          attributes: [23, 50.941, 2, 4],
        ),
        PlayCard(
          id: 24,
          name: "Crômo (Cr)",
          image: "assets/images/elementos/cromo.png",
          attributes: [24, 51.9961, 2, 4],
        ),
        PlayCard(
          id: 25,
          name: "Manganês (Mn)",
          image: "assets/images/elementos/manganes.png",
          attributes: [25, 54.938, 2, 4],
        ),
        PlayCard(
          id: 26,
          name: "Ferro (Fe)",
          image: "assets/images/elementos/ferro.png",
          attributes: [26, 55.845, 2, 4],
        ),
        PlayCard(
          id: 27,
          name: "Cobalto (Co)",
          image: "assets/images/elementos/cobalto.png",
          attributes: [27, 58.9332, 2, 4],
        ),
        PlayCard(
          id: 28,
          name: "Níquel (Ni)",
          image: "assets/images/elementos/niquel.png",
          attributes: [28, 58.693, 2, 4],
        ),
        PlayCard(
          id: 29,
          name: "Cobre (Cu)",
          image: "assets/images/elementos/cobre.png",
          attributes: [29, 63.546, 2, 4],
        ),
        PlayCard(
          id: 30,
          name: "Zinco (Zn)",
          image: "assets/images/elementos/zinco.png",
          attributes: [30, 65.380, 2, 4],
        ),
        PlayCard(
          id: 31,
          name: "Galio (Ga)",
          image: "assets/images/elementos/galio.png",
          attributes: [31, 69.723, 3, 4],
        ),
        PlayCard(
          id: 32,
          name: "Germanio (Ge)",
          image: "assets/images/elementos/germanio.png",
          attributes: [32, 72.630, 4, 4],
        ),
        PlayCard(
          id: 33,
          name: "Arsênio (As)",
          image: "assets/images/elementos/arsenio.png",
          attributes: [33, 74.921, 5, 4],
        ),
        PlayCard(
          id: 34,
          name: "Selênio (Se)",
          image: "assets/images/elementos/selenio.png",
          attributes: [34, 78.960, 6, 4],
        ),
        PlayCard(
          id: 35,
          name: "Bromo (Ga)",
          image: "assets/images/elementos/bromo.png",
          attributes: [35, 79.904, 7, 4],
        ),
        PlayCard(
          id: 36,
          name: "Criptônio (Kr)",
          image: "assets/images/elementos/criptonio.png",
          attributes: [36, 83.798, 8, 4],
        ),
        PlayCard(
          id: 37,
          name: "Rubídio (Rb)",
          image: "assets/images/elementos/rubidio.png",
          attributes: [37, 85.467 1, 5],
        ),
        PlayCard(
          id: 38,
          name: "Estrtôncio (Sr)",
          image: "assets/images/elementos/estroncio.png",
          attributes: [38, 87.620, 2, 5],
        ),
        PlayCard(
          id: 39,
          name: "Ítrio (Y)",
          image: "assets/images/elementos/itrio.png",
          attributes: [39, 88.905, 2, 5],
        ),
        PlayCard(
          id: 40,
          name: "Zircônio (Zr)",
          image: "assets/images/elementos/zirconio.png",
          attributes: [40, 91.224, 2, 5],
        ),
        PlayCard(
          id: 41,
          name: "Nióbio (Nb)",
          image: "assets/images/elementos/nióbio.png",
          attributes: [41, 91.224, 1, 5],
        ),
        PlayCard(
          id: 42,
          name: "Molibdênio (Mo)",
          image: "assets/images/elementos/molibdenio.png",
          attributes: [42, 95.960, 1, 5],
        ),
        PlayCard(
          id: 43,
          name: "Tecnécio (Tc)",
          image: "assets/images/elementos/tecnecio.png",
          attributes: [43, 98.000, 2, 5],
        ),
        PlayCard(
          id: 44,
          name: "Rutênio (Ru)",
          image: "assets/images/elementos/rutenio.png",
          attributes: [44, 101.070, 1, 5],
        ),
        PlayCard(
          id: 45,
          name: "Ródio (Rh)",
          image: "assets/images/elementos/rodio.png",
          attributes: [45, 102.905, 1, 5],
        ),
        PlayCard(
          id: 46,
          name: "Paládio (Pd)",
          image: "assets/images/elementos/paladio.png",
          attributes: [45, 106.42, 18, 4],
        ),
        PlayCard(
          id: 47,
          name: "Prata (Ag)",
          image: "assets/images/elementos/prata.png",
          attributes: [47, 107.868, 1, 5],
        ),
        PlayCard(
          id: 48,
          name: "Cádmio (Cd)",
          image: "assets/images/elementos/cadmio.png",
          attributes: [48, 112.411, 2, 5],
        ),
        PlayCard(
          id: 49,
          name: "Índio (In)",
          image: "assets/images/elementos/indio.png",
          attributes: [49, 114.818, 3, 5],
        ),
        PlayCard(
          id: 50,
          name: "Estanho (Sn)",
          image: "assets/images/elementos/estanho.png",
          attributes: [50, 118.710, 4, 5],
        ),
        PlayCard(
          id: 51,
          name: "Antimônio (Sb)",
          image: "assets/images/elementos/antimonio.png",
          attributes: [51, 121.760, 5, 5],
        ),
        PlayCard(
          id: 52,
          name: "Telúrio (Te)",
          image: "assets/images/elementos/antimonio.png",
          attributes: [52, 127.600, 6, 5],
        ),
        PlayCard(
          id: 53,
          name: "Iodo (I)",
          image: "assets/images/elementos/iodo.png",
          attributes: [53, 126.904, 7, 5],
        ),
        PlayCard(
          id: 54,
          name: "Xenônio (Xe)",
          image: "assets/images/elementos/xenonio.png",
          attributes: [54, 131.293, 8, 5],
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      child: Column(
        children: [
          const Text(
            "Aqui vai o logo",
          ),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SelectButton(
                text: "Fácil",
                selected: difficult == Difficult.easy,
                onPressed: () {
                  setState(() {
                    difficult = Difficult.easy;
                  });
                },
              ),
              const SizedBox(width: 16),
              SelectButton(
                text: "Médio",
                selected: difficult == Difficult.medium,
                onPressed: () {
                  setState(() {
                    difficult = Difficult.medium;
                  });
                },
              ),
              const SizedBox(width: 16),
              SelectButton(
                text: "Difícil",
                selected: difficult == Difficult.hard,
                onPressed: () {
                  setState(() {
                    difficult = Difficult.hard;
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 32),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            childAspectRatio: 0.65,
            crossAxisSpacing: 16,
            children: collections
                .map(
                  (c) => GestureDetector(
                    onTap: () {
                      setState(() {
                        collection = c.id;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color:
                              collection == c.id ? Colors.blue : Colors.black,
                        ),
                      ),
                      child: Column(
                        children: [
                          CardBack(collection: c),
                          Expanded(
                            child: Center(
                              child: Text(
                                "${c.name}\n${c.cards.length.toString()} cartas",
                                style: TextStyle(
                                  color: collection == c.id
                                      ? Colors.blue
                                      : Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 32),
          SimpleButton(
            text: "Começar",
            onPressed: () {
              Navigator.pushNamed(
                context,
                PlayScreen.routeName,
                arguments: GameSettings(
                  collection:
                      collections.singleWhere((c) => c.id == collection),
                  difficult: difficult,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
