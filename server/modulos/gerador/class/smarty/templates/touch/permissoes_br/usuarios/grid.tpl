/**
*	@Autor: Maciel Sousa
*	@Email: macielcr7@gmail.com
**/

Ext.define('{$app|capitalize}.view.usuarios.List', {
    extend: 'Ext.dataview.List',
    alias: 'widget.usuarioslist',

    config: {
        id: 'GridUsuarios',
		fullscreen: true,
		store: 'StoreUsuarios',
        onItemDisclosure: true,
        itemTpl:  new Ext.XTemplate(
			{$item_tpl}
			{
				setAdministrador: function(v){
					switch(v){
						case '1':
						return 'Sim';
					  	break;
						case '2':
						return 'Não';
					  	break;
 					
					}
				},				
				setStatus: function(v){
					switch(v){
						case '1':
						return 'Ativo';
					  	break;
						case '2':
						return 'Desativado';
					  	break;
 					
					}
				}
			}
        ),
        plugins: [
	        {
	            xclass: 'Ext.plugin.ListPaging',
				loadMoreText: 'Carregar mais...',
				noMoreRecordsText: 'N&atilde;o &agrave; mais registros',
	            autoPaging: true
	        }
	    ],
        items: [
            {
                xtype: 'toolbar',
                docked: 'top',
                title: 'Usuarios',
				items: [
                    {
                        xtype: 'button',
                        ui: 'back',
						text: 'Voltar',
						action: 'back_menu'
                    },
					{
						xtype: 'spacer'
					},
					{
                        xtype: 'button',
                        ui: 'confirm',
						iconMask: true,
						iconCls: 'refresh',
						action: 'refresh'
                    }
				]
            },
			{
				xtype: 'toolbar',
				docked: 'bottom',
				ui: 'light',
				layout: {
					align: 'center',
					pack: 'center',
					type: 'hbox'
				},
				items: [
					{
						xtype: 'button',
						iconCls: 'add',
						hidden: true,
						action: 'adicionar',
						iconMask: true
					},
					{
						xtype: 'button',
						action: 'editar',
						hidden: true,
						iconCls: 'compose',
						iconMask: true
					},
					{
						xtype: 'button',
						action: 'deletar',
						hidden: true,
						iconCls: 'delete',
						iconMask: true
					},
					{
						xtype: 'button',
						action: 'search',
						iconCls: 'search',
						iconMask: true
					},
					{
						xtype: 'button',
						action: 'modulos',
						iconCls: 'acao',
						iconMask: true
					}
				]
			}
               
        ]
    }

});

