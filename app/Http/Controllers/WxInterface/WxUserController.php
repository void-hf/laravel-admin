<?php
/**
 * Created by IntelliJ IDEA.
 * User: EDZ
 * Date: 2018/08/29
 * Time: 下午 04:22
 */

namespace App\Http\Controllers\WxInterface;

use App\Http\Controllers\Controller;
use App\Repositories\UserRepository;
use App\Service\WxchatService;
use Illuminate\Http\Request;
use App\Service\RedisService;
use App\Service\Message;


class WxUserController extends Controller
{
    private $request;
    private $userRepositories;
    private $wxchatService;
    private $redisService;
    private $message;

    public function __construct(Message $message, RedisService $redisService, Request $request, WxchatService $wxchatService, UserRepository $userRepositories)
    {
        $this->redisService = $redisService;
        $this->request = $request;
        $this->message = $message;
        $this->wxchatService = $wxchatService;
        $this->userRepositories = $userRepositories;
    }


    public function userReg()//用户注册
    {
        $username = $this->request->post("user_name");//用户名
        $user_head_img = $this->request->post("user_head_img");//用户头像
        $code = $this->request->post('code');
        if (!trim($user_head_img)) {
           return eShow($this->message->eUserNullImg); //用户头像不能为空
        }
        if (!trim($username)) {
            return eShow($this->message->eUserNullName); //用户头像不能为空
        }
        if (!trim($code)) {//通过code换取openid
            return eShow($this->message->eUserNullCode);//code不能为空
        }
        $openid = json_decode($this->wxchatService->getOpenId($code));
        if (!isset($openid)) {
            return eShow($this->message->eGetUserOpenid);
        }
        $openid = $openid->openid;
        if (!trim($openid)) {
            return eShow($this->message->eGetUserOpenid);
        }
        $user = $this->userRepositories->getUserByOpenId($openid);
        if ($user) {//判断用户已经注册
            $token = $this->redisService->findBy($user->id);
            if ($token) {
                return show(0, "用户已经登录", ["isReg" => 1, "data" => ["opend_id" => $openid, "token" => $token, "user_id" => $user->id]]);//如果注册返回token
            } else {
                $token = $this->wxchatService->creatToken('', time());
                $this->redisService->serGFile($token, $user->id);
                return show(0, "用户获取token成功", ["isReg" => 1, "data" => ["opend_id" => $openid, "token" => $token, "user_id" => $user->id]]);
            }
        }
        $data = array(
            'openid' => $openid,
            'user_name' => $username,
            'user_head_img' => $user_head_img,
            'reg_time' => time()
        );
        $res = $this->userRepositories->addUser($data);
        if ($res) {
            return show(0, "用户注册成功");
        }
    }

    public function userLoginByOpenid()//通过openid获取token
    {
        $open_id = $this->request->post("open_id");

        if (!trim($open_id)) {
            return eShow($this->message->eUserNullOpenid);
        }

        $user = $this->userRepositories->getUserByOpenId($open_id);
        if (!$user) {
            return eShow($this->message->eUserNotReg);
        };
        $token = $this->redisService->findBy($user->id);//获取token

        if (trim($token)) {
            return show(0, "获取成功", ['data' => $token]);
        }

        $token = $this->wxchatService->creatToken('', time());

        if ($this->redisService->serGFile($token,$user->id)) {
            return  show(0, "获取token成功", ['token' => $token]);
        }
    }

    public function checkUserLoginByToken(){ //判断用户登录
        $token = $this->request->post("token");

        if (!trim($token)){
            return eShow($this->message->eUserIsToken);
        }
        if (!$this->redisService->findBy($token)){
            return eShow($this->message->eUserIsLogin);
        }
            return show(0,"该token有效，用户已经登录");
    }
}
