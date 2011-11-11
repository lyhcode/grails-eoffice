/**
 * LoginWindow 登入視窗畫面
 */

Ext.define('OfficeApp.common.views.LoginWindow', {
    id: 'LoginWindow',
    extend: 'Ext.Window',
    requires: [
        'Ext.tab.*',
        'Ext.window.*',
        'Ext.tip.*',
        'Ext.layout.container.Border',
        'OfficeApp.common.views.LoginPanel'
    ],
    title: '登入系統',
    height: 350,
    width: 600,
    layout: 'border',
    bodyStyle: 'padding: 5px;',
    closable: false,
    modal: true,
    items: [{
        region: 'center',
        xtype: 'tabpanel',
        items: [Ext.create('OfficeApp.common.views.LoginPanel')]
    }]
});
