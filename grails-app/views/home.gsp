<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>網路辦公室 eOffice</title>
  <!-- Ext -->
  <!--<link rel="stylesheet" type="text/css" href="${resource(dir: 'ext/resources/css', file: 'ext-all.css')}" />
  <script type="text/javascript" src="${resource(dir: 'ext', file: 'ext-all.js')}"></script>-->
  
  <!-- Ext CDN -->
  <link rel="stylesheet" type="text/css" href="http://cdn.sencha.io/ext-4.0.7-gpl/resources/css/ext-all.css" />
  <script type="text/javascript" charset="utf-8" src="http://cdn.sencha.io/ext-4.0.7-gpl/bootstrap.js"></script>

  <!-- page specific -->
  <style type="text/css">
  body {
  	/*background-color: #b9b9b9;
  	background-image: url(${resource(dir: 'images', file: 'background.png')});*/
  }
  #header {
    background: #7F99BE url(${resource(dir: 'images', file: 'layout-browser-hd-bg.gif')}) repeat-x center;
    text-align: center;
  }
  #header h1 {
    font-size: 16px;
    color: #fff;
    font-weight: normal;
    padding: 5px 10px;
  }
  </style>

  <script type="text/javascript">
  // 啟用 Ext 動態載入器
  Ext.Loader.setConfig({
    enabled: true,
    paths: {
      'OfficeApp': 'js/OfficeApp'
    }
  });

  // 建立登入畫面
  Ext.require([
    //'OfficeApp.common.views.HomeWindow'
  ]);

  Ext.onReady(function(){
    //var loginWindow = Ext.create('OfficeApp.common.views.LoginWindow');
    //loginWindow.show();

    var detailsPanel = {
        id: 'details-panel',
        title: '通知',
        region: 'south',
        margins: '3 3 3 3',
        bodyStyle: 'padding-bottom:15px;background:#eee;',
        autoScroll: true,
        html: '<p class="details-info">共有 0 筆通知。</p>',
        border: true
    };
    var tree1 = Ext.create('Ext.tree.Panel', {
        title: '1234',
        header: false,
        headerAsText: false,
        border: false,
        rootVisible : false,
        root: {
            nodeType: 'async',
            text : '根',
            expanded: true,
 
            children : [ {
                text : '個人資料',
                children : [ {
                    text : '個人資料維護',
                    leaf : true
                }, {
                    text : '密碼變更',
                    leaf : true
                } ]
            }, {
                text : '客戶資料',
                children : [ {
                    text : '客戶基本資料查詢維護',
                    leaf : true
                }, {
                    text : '客戶基本資料列印',
                    leaf : true
                } ]
            }, {
                text : '帳號及系統',
                children : [ {
                    text : '帳號管理作業',
                    leaf : true
                }, {
                    text : '系統參數設定',
                    leaf : true
                }, {
                    text : '作業選單管理',
                    leaf : true
                } ]
            }, {
                text : '匯入及匯出',
                children : [ {
                    text : '批次匯入',
                    leaf : true
                }, {
                    text : '批次匯出',
                    leaf : true
                } ]
            } ]
        }
    });
    var item1 = Ext.create('Ext.Panel', {
        title: '功能表',
        layout: 'fit',
        items: [tree1]
    });
    var item2 = Ext.create('Ext.Panel', {
        title: '系統管理',
        html: '選單二'
    });
    var accordion = Ext.create('Ext.Panel', {
        layout: 'accordion',
        region: 'center',
        border: true,
        margins: '3 3 3 3',
        items: [item1, item2]
    });
    Ext.create('Ext.Viewport', {
        layout: 'border',
        title: '網路辦公室',
        items: [{
            xtype: 'box',
            id: 'header',
            region: 'north',
            html: '<h1>網路辦公室 eOffice</h1>',
            height: 30
        },{
            id: 'menu',
            region: 'west',
            layout: 'border',
            border: true,
            split: true,
            collapsible: true,
            margins: '2 0 5 5',
            width: 250,
            minSize: 100,
            maxSize: 500,
            items: [accordion, detailsPanel]
        },{
            id: 'content',
            region: 'center',
            html: '<h1> Ext.Layout.Browser</h1>'
        }],
        renderTo: Ext.getBody()
    });
  });
  </script>
</head>
<body>
</body>
</html>
