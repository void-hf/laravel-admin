<?php
/**
 * Created by PhpStorm.
 * User: EDZ
 * Date: 2018/8/28
 * Time: 19:10
 */

namespace App\Service;

use App\Service\RedisService;

class WxQr
{
    protected $appid;

    protected $secret;

    protected $accessToken;

    protected $wchatAccesTokenUrl;
    protected $getwxacodeunlimitUrl;
    private $redisService;
    public $url;
    protected $path;
    private $data;

    public function __construct($appid,$secret,$path,$data,RedisService $redisService)
    {
        $this->redisService = $redisService;
        $this->appid = $appid;
        $this->secret = $secret;
        $this->path = $path;
        $this->data = $data;
        $this->wchatAccesTokenUrl = 'https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid='.$this->appid.'&secret='.$this->secret;
        $this->accessToken = $this->getAccessToken();
        $this->getwxacodeunlimitUrl = 'https://api.weixin.qq.com/wxa/getwxacodeunlimit?access_token='. $this->accessToken;
        $this->imgbaes64 = $this->getGetwxacodeunlimit();

    }

    protected function getAccessToken()
    {
        $access_token = null;
        if(!$this->redisService->setFile('access_token_'.$this->appid))
        {
            $result = json_decode($this->http($this->wchatAccesTokenUrl));
            $this->redisService->setFileKey('access_token'.$this->appid,json_encode($result),7100);
            $access_token = $result->access_token;
        }else{
            $result = json_decode($this->redisService->setFileKey('access_token'.$this->appid),true);
            $access_token = $result->access_token;
        }
        return $access_token;
    }

    protected function getGetwxacodeunlimit()
    {
        $postData = [
            'scene'=>$this->data,
            'page'=>$this->path,
            'width'=>430,
            'auto_color'=>false,
            'line_color'=>[
                'r'=>0,
                'g'=>0,
                'b'=>0
            ],
            'is_hyaline'=>false
        ];
        $result = $this->http($this->getwxacodeunlimitUrl , json_encode($postData) ,'POST');
        file_put_contents(ROOT_PATH.'public/upload/qrcode/code-'.$this->appid.'-'.time().'.jpg',$result);
        $this->url = 'https://'.$_SERVER['HTTP_HOST'].'/upload/qrcode/code-'.$this->appid.'-'.time().'.jpg';
    }

    protected function http($url, $data='', $method='GET'){
        $curl = curl_init(); // 启动一个CURL会话
        curl_setopt($curl, CURLOPT_URL, $url); // 要访问的地址
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false); // 对认证证书来源的检查
        curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false); // 从证书中检查SSL加密算法是否存在
        curl_setopt($curl, CURLOPT_USERAGENT, $_SERVER['HTTP_USER_AGENT']); // 模拟用户使用的浏览器
        curl_setopt($curl, CURLOPT_FOLLOWLOCATION, 1); // 使用自动跳转
        curl_setopt($curl, CURLOPT_AUTOREFERER, 1); // 自动设置Referer
        if($method=='POST'){
            curl_setopt($curl, CURLOPT_POST, 1); // 发送一个常规的Post请求
            if ($data != ''){
                curl_setopt($curl, CURLOPT_POSTFIELDS, $data); // Post提交的数据包
            }
        }
        curl_setopt($curl, CURLOPT_TIMEOUT, 30); // 设置超时限制防止死循环
        curl_setopt($curl, CURLOPT_HEADER, 0); // 显示返回的Header区域内容
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1); // 获取的信息以文件流的形式返回
        $tmpInfo = curl_exec($curl); // 执行操作
        curl_close($curl); // 关闭CURL会话
        return $tmpInfo; // 返回数据
    }
}
