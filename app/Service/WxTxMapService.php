<?php
/**
 * Created by IntelliJ IDEA.
 * User: EDZ
 * Date: 2018/08/31
 * Time: 下午 08:49
 */

namespace App\Service;
use GuzzleHttp\Client;

class WxTxMapService
{
        private $authorizationUrl = 'https://apis.map.qq.com/ws/distance/v1/?parameters';
        private $localtionCity = "https://apis.map.qq.com/ws/geocoder/v1/?location=" ;
        private $key = 'NP3BZ-RGWCI-H55GC-5SLEH-V7GPH-6ZFWO';

        public function getparameters($form,$to){//一对多获取距离
            $mode = 'walking';
            $toStr = '';
            foreach ($to as $key=>$value){
                $toStr = $toStr.$to[$key]['lat'].','.$to[$key]['lng'].";";
            }
            return $toStr;
          //  $this->authorizationUrl.
        }

    public function localtionCity($lat,$lng)
    {//一对多获取城市
        $url = $this->localtionCity . $lat . "," . $lng . "&key=" . $this->key . "&get_poi=1";
        $client = new Client();
        $response = $client->get($url, ['verify' => false]);
        if ($response->getStatusCode() == 200) {
            $data = $response->getBody()->getContents();
            return $data;
        } else {
            return false;
        }
    }
}
