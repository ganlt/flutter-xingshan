import 'package:flutter/material.dart';
import 'package:xingshan/common/style/style.dart';

///支持顶部和顶部的TabBar控件
///配合AutomaticKeepAliveClientMixin可以keep住
class XSTabBarWidget extends StatefulWidget {
  ///底部模式type
  static const int BOTTOM_TAB = 1;

  final int type;

  final bool resizeToAvoidBottomPadding;

  final List<Widget> tabItems;

  final List<Widget> tabViews;

  final Color backgroundColor;

  final Color indicatorColor;

  final Widget title;

  final Widget drawer;

  final Widget floatingActionButton;

  final FloatingActionButtonLocation floatingActionButtonLocation;

  final Widget bottomBar;

  final TarWidgetControl tarWidgetControl;

  final ValueChanged<int> onPageChanged;

  XSTabBarWidget({
    Key key,
    this.type,
    this.tabItems,
    this.tabViews,
    this.backgroundColor,
    this.indicatorColor,
    this.title,
    this.drawer,
    this.bottomBar,
    this.floatingActionButtonLocation,
    this.floatingActionButton,
    this.resizeToAvoidBottomPadding = true,
    this.tarWidgetControl,
    this.onPageChanged,
  }) : super(key: key);

  @override
  _XSTabBarState createState() => new _XSTabBarState(
        type,
        tabViews,
        indicatorColor,
        onPageChanged,
      );
}

class _XSTabBarState extends State<XSTabBarWidget>
    with SingleTickerProviderStateMixin {
  final int _type;

  final List<Widget> _tabViews;

  final Color _indicatorColor;

  final PageController _pageController = PageController();

  final ValueChanged<int> _onPageChanged;

  _XSTabBarState(
    this._type,
    this._tabViews,
    this._indicatorColor,
    this._onPageChanged,
  ) : super();

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        new TabController(vsync: this, length: widget.tabItems.length);
  }

  ///整个页面dispose时，记得把控制器也dispose掉，释放内存
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ///底部tab bar
    return new Scaffold(
        // appBar: new AppBar(
        //   backgroundColor: Theme.of(context).primaryColor,
        //   title: widget.title,
        // ),
        body: new PageView(
          controller: _pageController,
          children: _tabViews,
          onPageChanged: (index) {
            _tabController.animateTo(index);
            _onPageChanged?.call(index);
          },
        ),
        bottomNavigationBar: new Material(
          //为了适配主题风格，包一层Material实现风格套用
          color: Colors.white, //底部导航栏主题颜色
          child: new SafeArea(
            child: new TabBar(
              //TabBar导航标签，底部导航放到Scaffold的bottomNavigationBar中
              controller: _tabController, //配置控制器
              tabs: widget.tabItems,
              // labelColor: XSColors.primaryTabValue,
              labelPadding: EdgeInsets.only(top: 6, bottom: 3),
              labelStyle: TextStyle(
                fontSize: 10,
              ),
              indicatorColor: _indicatorColor,
              onTap: (index) {
                _onPageChanged?.call(index);
                _pageController
                    .jumpTo(MediaQuery.of(context).size.width * index);
              }, //tab标签的下划线颜色
            ),
          ),
        ));
  }
}

class TarWidgetControl {
  List<Widget> footerButton = [];
}
