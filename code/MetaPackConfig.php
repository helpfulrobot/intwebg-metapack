<?php
class MetaPackConfig extends DataExtension {

	private static $db = array(
		'GoogleWebmasterTool' => 'Text',
		'BingWebmasterTool' => 'Text',
	);

	private static $has_one = array(
		'SiteIconAndroid' => 'Image',
		'SiteIconIos' => 'Image',
	);

	function updateCMSFields(FieldList $fields) { 
	
        $fields->addFieldToTab('Root.Main', new Tab('WebmasterTool'));
        $fields->addFieldToTab('Root.Main', new Tab( _t('MetaPack.ICONS','Icons') ));
        $fields->addFieldToTab('Root.Main', new Tab( _t('MetaPack.DEFAULTSHAREDIMAGE', 'DefaultSharedImage') ));
		
		$fields->addFieldToTab('Root.Meta.WebmasterTool', new TextField("GoogleWebmasterTool", "Google Webmaster Tool ID"));
		$fields->addFieldToTab('Root.Meta.WebmasterTool', new TextField("BingWebmasterTool", "Bing Webmaster Tool ID"));
		$fields->addFieldToTab(
            'Root.Meta.' . _t('MetaPack.ICONS','Icons'),    
            $uploadField2 = new UploadField(
                $name = 'SiteFavIcon',
                $title = _t('MetaPack.FAVICON','Favicon site icon') . ' (16px x 16px)'
            )    
        );
		$uploadField2->setFolderName('Uploads/Meta');
	
		$fields->addFieldToTab(
            'Root.Meta.' . _t('MetaPack.ICONS','Icons'),    
            $uploadField3 = new UploadField(
                $name = 'SiteIconAndroid',
                $title = _t('MetaPack.ANDROIDICON','Android device icon') . ' (200px x 200px)'
            )    
        );
		$uploadField3->setFolderName('Uploads/Meta');
	
		$fields->addFieldToTab(
            'Root.Meta.' . _t('MetaPack.ICONS','Icons'),    
            $uploadField4 = new UploadField(
                $name = 'SiteIconIos',
                $title =  _t('MetaPack.IOSICON','iOS device icon') . ' (200px x 200px)'
            )    
        );
		$uploadField4->setFolderName('Uploads/Meta');
	
		return $fields; 
		
	}

}