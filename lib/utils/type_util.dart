

///
/// タイプ相性(自分が受けるときに、ばつぐん)
///
List<String> getCompatibilityEffective(String type)
{
  List<String> compatibilities = [];

  switch (type) {
    case "normal" :
      compatibilities.add("fighting");
      break;

    case "fighting" :
      compatibilities.add("flying");
      compatibilities.add("psychic");
      compatibilities.add("ghost");
      break;

    case "flying" :
      compatibilities.add("electric");
      compatibilities.add("ice");
      compatibilities.add("rock");
      break;

    case "poison" :
      compatibilities.add("ground");
      compatibilities.add("psychic");
      break;

    case "ground" :
      compatibilities.add("water");
      compatibilities.add("grass");
      compatibilities.add("ice");
      break;

    case "rock" :
      compatibilities.add("water");
      compatibilities.add("grass");
      compatibilities.add("fighting");
      compatibilities.add("ground");
      compatibilities.add("steel");
      break;

    case "bug" :
      compatibilities.add("fire");
      compatibilities.add("flying");
      compatibilities.add("rock");
      break;

    case "ghost" :
      compatibilities.add("ghost");
      compatibilities.add("dark");
      break;

    case "steel" :
      compatibilities.add("fire");
      compatibilities.add("fighting");
      compatibilities.add("ground");
      break;

    case "fire" :
      compatibilities.add("water");
      compatibilities.add("ground");
      compatibilities.add("rock");
      break;

    case "water" :
      compatibilities.add("electric");
      compatibilities.add("grass");
      break;

    case "grass" :
      compatibilities.add("fire");
      compatibilities.add("ice");
      compatibilities.add("poison");
      compatibilities.add("flying");
      compatibilities.add("bug");
      break;

    case "electric" :
      compatibilities.add("ground");
      break;

    case "psychic" :
      compatibilities.add("bug");
      compatibilities.add("ghost");
      compatibilities.add("dark");
      break;

    case "ice" :
      compatibilities.add("fire");
      compatibilities.add("fighting");
      compatibilities.add("rock");
      compatibilities.add("steel");
      break;

    case "dragon" :
      compatibilities.add("ice");
      compatibilities.add("dragon");
      compatibilities.add("fairy");
      break;

    case "dark" :
      compatibilities.add("fighting");
      compatibilities.add("bug");
      compatibilities.add("fairy");
      break;

    case "fairy" :
      compatibilities.add("poison");
      compatibilities.add("steel");
      break;

    case "unknown" :
      break;

    case "shadow" :
      break;
  }

  return compatibilities;
}


///
/// タイプ相性(自分が受けるときに、いまひとつ)
///
List<String> getCompatibilityNotEffective(String type)
{
  List<String> compatibilities = [];

  switch (type) {
    case "normal" :
      break;

    case "fighting" :
      compatibilities.add("bug");
      compatibilities.add("rock");
      compatibilities.add("dark");
      break;

    case "flying" :
      compatibilities.add("grass");
      compatibilities.add("fighting");
      compatibilities.add("bug");
      break;

    case "poison" :
      compatibilities.add("grass");
      compatibilities.add("fighting");
      compatibilities.add("poison");
      compatibilities.add("bug");
      compatibilities.add("fairy");
      break;

    case "ground" :
      compatibilities.add("poison");
      compatibilities.add("rock");
      break;

    case "rock" :
      compatibilities.add("normal");
      compatibilities.add("fire");
      compatibilities.add("poison");
      compatibilities.add("flying");
      break;

    case "bug" :
      compatibilities.add("fire");
      compatibilities.add("fighting");
      compatibilities.add("ground");
      break;

    case "ghost" :
      compatibilities.add("poison");
      compatibilities.add("bug");
      break;

    case "steel" :
      compatibilities.add("normal");
      compatibilities.add("grass");
      compatibilities.add("ice");
      compatibilities.add("flying");
      compatibilities.add("psychic");
      compatibilities.add("bug");
      compatibilities.add("rock");
      compatibilities.add("dragon");
      compatibilities.add("steel");
      compatibilities.add("fairy");
      break;

    case "fire" :
      compatibilities.add("fire");
      compatibilities.add("grass");
      compatibilities.add("ice");
      compatibilities.add("bug");
      compatibilities.add("steel");
      compatibilities.add("fairy");
      break;

    case "water" :
      compatibilities.add("fire");
      compatibilities.add("water");
      compatibilities.add("ice");
      compatibilities.add("steel");
      break;

    // TODO ここから

    case "grass" :
      compatibilities.add("water");
      compatibilities.add("electric");
      compatibilities.add("grass");
      compatibilities.add("ground");
      break;

    case "electric" :
      compatibilities.add("electric");
      compatibilities.add("flying");
      compatibilities.add("steel");
      break;

    case "psychic" :
      compatibilities.add("fighting");
      compatibilities.add("psychic");
      break;

    case "ice" :
      compatibilities.add("ice");
      break;

    case "dragon" :
      compatibilities.add("fire");
      compatibilities.add("water");
      compatibilities.add("electric");
      compatibilities.add("grass");
      break;

    case "dark" :
      compatibilities.add("ghost");
      compatibilities.add("dark");
      break;

    case "fairy" :
      compatibilities.add("fighting");
      compatibilities.add("bug");
      compatibilities.add("dark");
      break;

    case "unknown" :
      break;

    case "shadow" :
      break;
  }

  return compatibilities;
}


// 4倍のこうかばつぐん
List<String> getEffective4(type1, type2){
  List<String> types = [];

  // 1つめのタイプの相性（自分に、こうか抜群）
  List<String> effectiveTypes1 = getCompatibilityEffective(type1);
  // 2つめのタイプの相性（自分に、こうか抜群）
  List<String> effectiveTypes2 = getCompatibilityEffective(type2);

  // 1つ目と2つめで、一致するものがあれば、それが4倍のこうかばつぐん
  effectiveTypes1.asMap().forEach((key1, value1) {
    effectiveTypes2.asMap().forEach((key2, value2) {
      if (value1 == value2) {
        types.add(value1);
      }
     });
  });

  return types;
}


// 2倍のこうかばつぐん
List<String> getEffective2(type1, [type2=false]){
  List<String> types = [];

  // 1つめのタイプの相性（自分に、こうか抜群）
  List<String> effectiveTypes1 = getCompatibilityEffective(type1);

  // タイプを2つ持っている場合
  if (type2 != false) {
    // 2つめのタイプの相性（自分に、こうか抜群）
    List<String> effectiveTypes2 = getCompatibilityEffective(type2);
    // 1つ目と2つめで、一致するものがあれば、それが4倍のこうかばつぐん
    effectiveTypes1.asMap().forEach((key1, value1) {
      effectiveTypes2.asMap().forEach((key2, value2) {
        if (value1 != value2) {
          types.add(value1);
        }
      });
    });

  } else {
    // タイプが1つのみの場合
    types = effectiveTypes1;
  }

  return types;
}



// 1/4のこうかいまひとつ
List<String> getNotEffective4(type1, type2){
  List<String> types = [];

  // 1つめのタイプの相性（自分に、こうか抜群）
  List<String> effectiveTypes1 = getCompatibilityNotEffective(type1);
  // 2つめのタイプの相性（自分に、こうか抜群）
  List<String> effectiveTypes2 = getCompatibilityNotEffective(type2);

  // 1つ目と2つめで、一致するものがあれば、それが4倍のこうかばつぐん
  effectiveTypes1.asMap().forEach((key1, value1) {
    effectiveTypes2.asMap().forEach((key2, value2) {
      if (value1 == value2) {
        types.add(value1);
      }
     });
  });

  return types;
}

// 1/42こうかいまひとつ
List<String> getNotEffective2(type1, [type2=false]){
  List<String> types = [];

  // 1つめのタイプの相性（自分に、こうか抜群）
  List<String> effectiveTypes1 = getCompatibilityNotEffective(type1);

  // タイプを2つ持っている場合
  if (type2 != false) {
    // 2つめのタイプの相性（自分に、こうか抜群）
    List<String> effectiveTypes2 = getCompatibilityNotEffective(type2);
    // 1つ目と2つめで、一致するものがあれば、それが4倍のこうかばつぐん
    effectiveTypes1.asMap().forEach((key1, value1) {
      effectiveTypes2.asMap().forEach((key2, value2) {
        if (value1 != value2) {
          types.add(value1);
        }
      });
    });

  } else {
    // タイプが1つのみの場合
    types = effectiveTypes1;
  }

  return types;
}