<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>網路辦公室 eOffice</title>
  <!-- Ext -->
  <link rel="stylesheet" type="text/css" href="${resource(dir: 'ext/resources/css', file: 'ext-all.css')}" />
  <script type="text/javascript" src="${resource(dir: 'ext', file: 'ext-all.js')}"></script>
  
  <!-- Ext CDN -->
  <!--<link rel="stylesheet" type="text/css" href="http://cdn.sencha.io/ext-4.0.7-gpl/resources/css/ext-all.css" />
  <script type="text/javascript" charset="utf-8" src="http://cdn.sencha.io/ext-4.0.7-gpl/ext-all-debug.js"></script>-->

  <!-- page specific -->
  <style type="text/css">
  body {
  	background-color: #b9b9b9;
  	background-image: url(${resource(dir: 'images', file: 'background.png')});
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

    Ext.create('Ext.Viewport', {
        layout: 'border',
        title: '網路辦公室',
        items: [{
            xtype: 'box',
            id: 'header',
            region: 'north',
            html: '<h1>網路辦公室</h1>',
            height: 30
        },{
            xtype: 'box',
            id: 'menu',
            region: 'west',
            border: false,
            split:true,
            margins: '2 0 5 5',
            width: 250,
            minSize: 100,
            maxSize: 500,
            html: '<h1> Ext.Layout.Browser</h1>',
            height: 30
        },{
            xtype: 'box',
            id: 'content',
            region: 'center',
            html: '<h1> Ext.Layout.Browser</h1>',
            height: 30
        }],
        renderTo: Ext.getBody()
    });
  });
  </script>
</head>
<body>
</body>
</html>
