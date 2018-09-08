<?php
/**
 * Created by IntelliJ IDEA.
 * User: EDZ
 * Date: 2018/09/06
 * Time: 下午 02:39
 */

namespace App\Http\Controllers\WxInterface;

use App\Service\Message;
use App\Repositories\BaseAddressRepository;
use App\Repositories\ActivityRepository;
use App\Repositories\UserRepository;
use App\Http\Controllers\Controller;
use Encore\Admin\Show;
use Illuminate\Http\Request;

class WxBaseController extends Controller
{
    private $baseAddressRepository;
    private $userRepository;
    private $activityRepository;
    private $request;
    private $user_id;
    private $message;

    public function __construct(ActivityRepository $activityRepository, UserRepository $userRepository, Message $message, Request $request, BaseAddressRepository $baseAddressRepository)
    {
        $this->request = $request;
        $this->message = $message;
        $this->activityRepository = $activityRepository;
        $this->userRepository = $userRepository;
        $token = $this->request->post('token');
        $this->user_id = $userRepository->checkToken($token);
        $this->baseAddressRepository = $baseAddressRepository;
    }

    public function getNearbyActivity()//获取最近的基地
    {
        $lat = $this->request->post('lat');
        $lng = $this->request->post('lng');
        if (!trim($this->user_id)) {
            return eShow($this->message->eUserIsToken);
        }
        $res = $this->baseAddressRepository->getNearbyActivity($lat, $lng, $this->user_id);
        return show(0, "获取基地成功", $res);
    }

    public function punchClockUp()//打卡接口
    {
        if (!trim($this->user_id)) {
            return eShow($this->message->eUserIsToken);
        }

        $activity_id = $this->request->post('activity_id');

        if (!trim($activity_id)) {
            return eShow($this->message->eActivityidNullId);
        }

        $data = array(
            'user_id' => $this->user_id,
            'activity_id' => $activity_id,
            'is_pass' => 0,
            'add_time' => time()
        );

        if (!$this->activityRepository->findBy(["id" => $activity_id])) {
            return eShow($this->message->eGetError);
        }

        $data = array(
            'user_id' => $this->user_id,
            'activity_id' => $activity_id,
            'is_pass' => 0,
            'add_time' => time(),
            'end_time' => 0,
        );

        if ($this->baseAddressRepository->getNearbyNowDay($activity_id,$this->user_id,time())) {//判断是否是没有签到的情况
            return eShow($this->message->eDayIsco);//今天已经签到
        }

        if ($this->baseAddressRepository->addNearbyActivity($data)) {
            return show(0, "签到成功");
        }
    }

    public function punchClockDown()
    {
        if (!trim($this->user_id)) {
            return eShow($this->message->eUserIsToken);
        }
        $punchClockId = $this->request->post('punch_clock_id');//打卡的id

        if (!trim($punchClockId)) {
            return eShow($this->message->eActivityidNullId);
        }

        if ($this->baseAddressRepository->findNearby(["id" => $punchClockId, "is_pass" => 0, "end_time" => 0])) {//判断是否是没有签到的情况
            if ($this->baseAddressRepository->editNearbyActivity(["id" => $punchClockId], ['is_pass' => 1])) {
                return show(0, "签退成功");
            }
        }

        return eShow($this->message->eEditError);
    }


    public function Activitylist()//获取活动地址列表
    {
        if (!trim($this->user_id)) {
            return eShow($this->message->eUserIsToken);
        }

        $key = $this->request->post('key');///搜索关键字
        $tab = $this->request->post('tab');//标签
        $lat = $this->request->post('lat');
        $lng = $this->request->post('lng');

        $offset = $this->request->post('offset');
        $size = $this->request->post('size');
        $page = $this->request->post('page');

//        if (!trim($tab)){
//            return eShow($this->message->eNullTab);
//        }

        if (!trim($lat)){
            return eShow($this->message->eUserNulllat);
        }

        if (!trim($lng)){
            return eShow($this->message->eUserNulllng);
        }

        if (!trim($offset)){
            $offset = 0;
        }

        if (!trim($size)){
            $size = 5;
        }

        if (!trim($page)){
            $page = 1;
        }

        return show(0,"获取成功", $this->activityRepository->getActivityList($lat,$lng,$key,$this->user_id));

    }

}