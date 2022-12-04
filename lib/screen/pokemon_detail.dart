import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poke_app/main.dart';
import 'package:poke_app/state/pokemon.dart';
import 'package:cached_network_image/cached_network_image.dart';



class PokemonDetail extends ConsumerWidget {
  const PokemonDetail({Key? key}) : super(key: key);


  ///
  /// 画像表示部分
  ///
  Widget imageArea(Pokemon pokemon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            color: pokemon.getTypeColor()[0],
            padding: const EdgeInsets.only(top: 50,),
            // 画像エリア全体のコンテンツ配置
            child: Column(
              children: [
                // 名前、タイプ部分
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // 名前
                    Container(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                          pokemon.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black.withOpacity(0.5)
                          ),
                        )
                    ),
                    // タイプ
                    Row(
                      children: [
                        type(pokemon, 0),
                        // タイプが2つある場合
                        if (pokemon.types.length > 1) ...{
                          type(pokemon, 1)
                        }
                      ],
                    )

                  ],
                ),
                const SizedBox(height: 50),
                // 画像部分
                CachedNetworkImage(
                        height: 100,
                        width: 200,
                        imageUrl: pokemon.sprites!['front_default']
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // imageArea中のタイプ表示部
  Widget type(Pokemon pokemon, int typeIndex) {
    return Container(
              alignment: Alignment.center,
              width: 70,
              height: 30,
              margin: const EdgeInsets.all(5.0),
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.white
                ),
                // withOpacity ... 背景色の透過
                color: pokemon.getTypeColor()[typeIndex]
              ),
              child: Text(
                pokemon.types[typeIndex]["type"]["name"],
                style:  TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.white.withOpacity(0.8)
                ),
              ),
            );
  }

  /// 詳細部分の1つ
  Widget content(String title) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Colors.black.withOpacity(0.5), width: 3),
              )
          ),
          child: Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black.withOpacity(0.5)
                    ),
                  )
        ),
        Text('test')
      ],
    );
  }

  /// 
  /// 詳細のタイトル要素
  /// 
  Widget rowTitleContent(String title) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, bottom: 15, left: 20, ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3)
              ),
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.black.withOpacity(0.5)
                ),
              )
            ),
          ),
        ],
      ),
    );
  }


  ///
  /// 一行あたりの要素
  /// 
  Widget rowDetailContent(Widget detail) {
    return Padding(
      padding: const EdgeInsets.only(right: 40, bottom: 15, left: 40, ),
      child: detail
    );
  }

  ///
  /// 詳細のテキスト要素
  ///
  Widget detailText() {
    return Text(
      'Test',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.black.withOpacity(0.8)
      ),
    );
  }


  /// 
  /// 特性
  /// 
  Widget detailAbility() {
    return Table(
      border: TableBorder.all(color: Colors.grey),
      children: [
        // 特性
        detailAbilityTableRow(),
        // 夢特性
        detailAbilityTableRow(),
      ],
    );
  }

  ///
  /// 特性の行
  ///
  TableRow detailAbilityTableRow() {
    return TableRow(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                // 特性の名前
                Expanded(
                  child: Text(      
                    'Test',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black.withOpacity(0.8)
                    ),
                  ),
                ),
                // 通常なのか、夢特性なのか
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'normal',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.black.withOpacity(0.5)
                    ),
                  )
                )
              ],
            ),
          )
        ]
      );
  }


  /// 
  /// 種族値の詳細エリア
  /// 
  Widget detailStats() {
    return Table(
      border: TableBorder.all(color: Colors.grey),
      columnWidths: const <int, TableColumnWidth>{
        0: IntrinsicColumnWidth(),
        // 1: FlexColumnWidth(1.0),
        // 2: FixedColumnWidth(100.0),
      },
      children: [
        detailStatsTableRow('Hp'),
        detailStatsTableRow('Attack'),
        detailStatsTableRow('Defense'),
        detailStatsTableRow('S.Attack'),
        detailStatsTableRow('S.Defense'),
        detailStatsTableRow('Speed'),
      ],
    );
  }

  ///
  /// 種族値のテーブルの一行
  ///
  TableRow detailStatsTableRow(String statType) {
    return TableRow(
        children: [
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.top,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(statType),
            ),
          ),
          const Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('test'),
          )
        ]          
      );
  }


  /// 
  /// 特性
  /// 
  Widget detailCompatibility() {
    return Table(
      border: TableBorder.all(color: Colors.grey),
      columnWidths: const <int, TableColumnWidth>{
        0: IntrinsicColumnWidth(),
        // 1: FlexColumnWidth(1.0),
        // 2: FixedColumnWidth(100.0),
      },
      children: [
        detailCompatibilityRow('x4'),
        detailCompatibilityRow('x2'),
        detailCompatibilityRow('x0.5'),
        detailCompatibilityRow('x0.25'),
      ],
    );
  }

  ///
  /// 特性の行
  ///
  TableRow detailCompatibilityRow(String title) {
    return TableRow(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                // 何倍か
                SizedBox(
                  width: 45.0,
                  child: Text(      
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black.withOpacity(0.8)
                    ),
                  ),
                ),
                // タイプ相性
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    child: Text(
                      'normal',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.black.withOpacity(0.5)
                      ),
                    )
                  ),
                )
              ],
            ),
          )
        ]
      );
  }


  ///
  /// 詳細エリア
  ///
  Widget detailArea() {
    return Expanded(
      child: ListView(
        children: [
          // 高さ/重さ、たまごグループ
          rowTitleContent('Egg groups'),
          rowDetailContent(detailText()),
          const SizedBox(height: 40,),

          // 特性/夢特性
          rowTitleContent('Ability / Hidden Ability'),
          rowDetailContent(detailAbility()),
          const SizedBox(height: 40,),

          // 種族値
          rowTitleContent('Status'),
          rowDetailContent(detailStats()),
          const SizedBox(height: 40,),

          // タイプ相性
          rowTitleContent('compatibility '),
          rowDetailContent(detailCompatibility()),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(targetPokemonProvider);

    return Scaffold(
      body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // ヘッダエリア
                imageArea(state.targetPokemon!),
                // 区切り線
                const Divider(
                  color: Colors.grey,
                  thickness: 3,
                  // height: 50,
                  indent: 20,
                  endIndent: 20,
                ),
                // 詳細エリア
                detailArea(),
              ],
            )
    );
  }
}

