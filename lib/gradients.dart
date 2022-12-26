import 'package:flutter/widgets.dart';

// https://uigradients.com/#IbizaSunset
// https://learnui.design/tools/gradient-generator.html
const ibizaSunset = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment(0.8, 1),
  colors: <Color>[
    Color(0xffee0979),
    Color(0xfff40e71),
    Color(0xfff91569),
    Color(0xfffd1e60),
    Color(0xffff2857),
    Color(0xffff324e),
    Color(0xffff3b45),
    Color(0xffff453c),
    Color(0xffff4e31),
    Color(0xffff5826),
    Color(0xffff6118),
    Color(0xffff6a00),
  ],
  tileMode: TileMode.mirror,
);

const wantItDarker = LinearGradient(
  begin: Alignment(-1, 0),
  end: Alignment(1, 0),
  colors: <Color>[
    Color(0xff101010),
    Color(0xff222222),
  ],
  tileMode: TileMode.mirror,
);

const clouds = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment(0.8, 1),
  colors: <Color>[
    Color(0xffffffff),
    Color(0xffece9e6),
  ],
  tileMode: TileMode.mirror,
);
