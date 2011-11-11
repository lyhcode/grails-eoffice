<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>登入網路辦公室 eOffice</title>
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
    'OfficeApp.common.views.LoginWindow'
  ]);

  Ext.onReady(function(){
    var loginWindow = Ext.create('OfficeApp.common.views.LoginWindow');
    loginWindow.show();
  });
  </script>
</head>
<body>
</body>
</html>
