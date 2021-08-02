<?php

use App\Models\Setting;

function getConfigValue($configKey){
    $setting = Setting::where('config_key',$configKey)->first();
    if(!empty($setting)){
        return $setting->config_value;
    }
    else{
        return null;
    }
}
