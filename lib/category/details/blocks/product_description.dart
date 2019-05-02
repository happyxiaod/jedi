import 'package:flutter/material.dart';

/// 自定义的商品描述组件。
class ProductDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 裂片列表（`SliverList`）组件，沿着主轴将多个盒子放置在线性阵列中的滚动条。
    return SliverList(
      // 委托（`delegate`）属性，为此组件提供子代的委托。
      // 裂片子代生成器委托（`SliverChildBuilderDelegate`）类，使用构建器回调提供子项的委托。
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            // 通过余量（`margin`）属性添加底部的分割空间。
            margin: EdgeInsets.only(bottom: 10.0),
            // 通过填充（`padding`）属性添加内部填充空间。
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            color: Color(0xffFFFFFF),
            child: Column(
              children: <Widget>[
                // 显示电商平台图标与商品名称的容器（`Container`）组件。
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8.0),
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: <Widget>[
                      Container(
                        height: 18.0,
                        width: 18.0,
                        margin: EdgeInsets.only(top: 0.0),
                        child: Image.network(
                          'http://img.yzcdn.cn/upload_files/2015/01/07/FvJHTJIhvAeSdg9u3pzAFdIuQXt2.jpg',
                          fit: BoxFit.contain,
                        ),
                      ),
                      Text(
                        '    ' + '加厚珊瑚毯子冬季加绒床单单人沙发毯子空调小被子法兰绒毛',
                        style: TextStyle(
                          color: Color(0xff333333),
                          fontFamily: 'PingFangMedium',
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
                // 显示商品价格和销售数量的容器（`Container`）组件。
                Container(
                  height: 35.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '天猫价：￥22.9',
                        style: TextStyle(
                          color: Color(0xffA8A8A8),
                          fontFamily: 'PingFangRegular',
                          fontSize: 12.0,
                        ),
                      ),
                      Text(
                        '已售39',
                        style: TextStyle(
                          color: Color(0xffA8A8A8),
                          fontFamily: 'PingFangRegular',
                          fontSize: 12.0,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 21.0,
                        padding: EdgeInsets.symmetric(horizontal: 6.0),
                        // 装饰（`decoration`）属性，子组件背后的装饰。
                        // 框装饰（`BoxDecoration`）类，关于如何绘制框的不可变描述。
                        decoration: BoxDecoration(
                          color: Color(0xffFFF1E9),
                          // 边界半径（`borderRadius`）属性，如果为非空值，则此属性将对此框的角进行舍入。
                          // 边界半径（`BorderRadius`）类，矩形每个角的一组不可变半径。
                          // 边界半径.所有（`BorderRadius.all`）构造函数，创建一个边界半径，设置所有的半径。
                          borderRadius: BorderRadius.all(
                            // 半径（`Radius`）类，圆形或椭圆形的半径。
                            // 半径.圆（`Radius.circular`）构造函数，构造一个圆形半径，x和y将具有相同的半径值。
                            Radius.circular(2.0),
                          ),
                        ),
                        child: Text(
                          '预估收益：￥1.18',
                          style: TextStyle(
                            color: Color(0xffFE3A50),
                            fontFamily: 'PingFangMedium',
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // 一个分割线。
                Container(
                  height: 1.0,
                  color: Color(0xffE8EAED),
                ),
                // 显示店铺图标与名称的容器（`Container`）组件。
                Container(
                  height: 35.0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 18.0,
                        width: 18.0,
                        margin: EdgeInsets.only(right: 6.0),
                        child: Image.network(
                          'http://www.shwpbbs.com/shopimg/bbs20151126824739.jpg',
                          fit: BoxFit.contain,
                        ),
                      ),
                      Text(
                        '红磨坊旗放假舰店',
                        style: TextStyle(
                          color: Color(0xff333333),
                          fontFamily: 'PingFangRegular',
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        // 子代总数（`childCount`）属性，该委托可以提供的子代总数。
        childCount: 1,
      ),
    );
  }
}
