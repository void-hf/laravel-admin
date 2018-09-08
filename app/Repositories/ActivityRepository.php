<?php
/**
 * Created by IntelliJ IDEA.
 * User: EDZ
 * Date: 2018/09/07
 * Time: 下午 07:57
 */

namespace App\Repositories;

use Illuminate\Support\Facades\DB;

class ActivityRepository extends BaseRepository
{
    protected $db='activity';

    public function getActivityList($lat,$lng,$key='',$user_id='',$tab=''){
//        return
////            Db::table($this->db)
////            ->select()
////            ->leftJoin("user_activity","activity.id","=","user_activity.activity_id")
////            ->where('user_id',$user_id)
////            ->where('activity_name',"like","%".$key."%")
////            ->get();
            return DB::select("SELECT
    activity_name,
    category_id,
    user_id,
     activity_address,
        activity_des,
    `activity`.`start_time`,
     `activity` .`end_time`,
     `activity`.`is_pass`,  
    lat,
    lng,
    ROUND(
        6378.138 * 2 * ASIN(
            SQRT(
                POW(
                    SIN(
                        (
                            ? * PI() / 180 - lat * PI() / 180  
                        ) / 2  
                    ),  
                    2
                ) + COS(? * PI() / 180) * COS(lat * PI() / 180) * POW(  
                    SIN(
                        (
                            ? * PI() / 180 - lng * PI() / 180  
                        )/ 2  
                    ),
                    2  
                )
            )
        ) * 1000
    ) AS distance_um  
FROM
    activity 
    LEFT JOIN `user_activity` ON `activity`.`id` = user_activity.activity_id 
    WHERE category_id = ?
ORDER by
    distance_um asc ",[$lat,$lat,$lng,$tab]);
    }
}