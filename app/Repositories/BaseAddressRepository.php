<?php
/**
 * Created by IntelliJ IDEA.
 * User: EDZ
 * Date: 2018/09/07
 * Time: 下午 04:43
 */

namespace App\Repositories;

use Illuminate\Support\Facades\DB;

class BaseAddressRepository extends BaseRepository
{
    protected $db = 'activity';
    private $square = 0.2;


    public function getNearbyActivity($lat, $lng, $user_id)//获取附近打卡信息
    {
        $point = returnSquarePoint($lat, $lng, $this->square);
        return
            DB::table("activity")
                ->select("user_activity.*")
                ->leftJoin("activity","user_activity.activity_id","=", "activity.id")
                ->where('user_id',$user_id)
                ->where('activity.lat','<',$point['lat_max'])
                ->where('activity.lat','>',$point['lat_min'])
                ->where('activity.lng','<',$point['lng_max'])
                ->where('activity.lng','>',$point['lng_min'])
                ->first();
    }

    public function addNearbyActivity($data){//用户签到打卡接口
        return Db::table("user_activity")->insert($data);
    }

    public function editNearbyActivity($where=[],$data){//用户退签到接口
        return Db::table("user_activity")->where($where)->update($data);
    }

    public function findNearby($where=[]){
        return Db::table("user_activity")->where($where)->first();
    }

    public function getNearbyNowDay($activity_id,$user_id,$time){
        return
            Db::table("user_activity")
                ->where(['activity_id'=>$activity_id,'user_id'=>$user_id])
                ->whereRaw(" FROM_UNIXTIME(add_time, '%Y-%m-%d') = FROM_UNIXTIME(".$time.", '%Y-%m-%d')")
                ->first();
    }
}