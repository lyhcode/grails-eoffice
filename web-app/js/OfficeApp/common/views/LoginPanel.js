/**
 * LoginPanel 登入視窗表單畫面
 */

Ext.define('OfficeApp.common.views.LoginPanel', {
    extend: 'Ext.form.Panel',
    requires: [
    ],
    frame: false,
    title: '填寫表單資料',
    bodyStyle:'padding:5px 5px 0',
    //width: 350,
    fieldDefaults: {
        msgTarget: 'side',
        labelWidth: 75
    },
    defaultType: 'textfield',
    defaults: {
        anchor: '100%'
    },
    items: [{
        fieldLabel: '帳號',
        name: 'username',
        allowBlank: false
    },{
        fieldLabel: '密碼',
        name: 'password',
        inputType:'password',
        allowBlank:false
    }],
    buttons: [{
        text: 'Login',
        formBind: true,
        handler: function() {
            if (this.up('form').getForm().isValid()) {
                this.up('form').getForm().submit({
                    url: 'system/login',
                    method: 'POST',
                    waitTitle: '登入中',
                    waitMsg: '正在驗證帳號密碼 ...',
                    success: function() {
                        window.location = 'home';
                    },
                    failure: function(form, action){
                        if (action.failureType == 'server'){
                            obj = Ext.util.JSON.decode(action.response.responseText);
                            Ext.Msg.alert('Login Failed!', obj.errors.reason);
                        } else {
                            Ext.Msg.alert('Warning!', 'Authentication server is unreachable : ' + action.response.responseText); 
                        }
                        login.getForm().reset();
                    }
                });
            }
        }
    }]
});
