<?php
/**
 * Created by IntelliJ IDEA.
 * User: EDZ
 * Date: 2018/07/27
 * Time: 下午 03:36
 */
function sShow($status, $msg, $data = '')
{
    $res = array(
        'status' => $status,
        'msg' => $msg,
        'data' => $data
    );
    return response()->json($res);
}

function show($code, $msg, $data = '')
{
    $res = array(
        'code' => $code,
        'msg' => $msg,
        'data' => $data
    );
    return response()->json($res);
}

function eShow($data)
{
    $code = $data[0];
    $msg = $data[1];
    $res = array(
        'code' => $code,
        'msg' => $msg,
        'data' => ""
    );
    return response()->json($res);
}

function weekday($time)
{
    if (is_numeric($time)) {
        $weekday = array('星期日', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六');
        return $weekday[date('w', $time)];

    }
    return false;
}

function ShengYu_Tian_Shi_Fen($unixEndTime)
{
    if ($unixEndTime <= time()) { // 如果过了活动终止日期
        return '0天0时0分';
    }
    $day = floor(($unixEndTime - time()) / 86400);
    $hour = floor(($unixEndTime - time()) % 86400 / 3600);
    $minute = floor(($unixEndTime - time()) % 86400 % 60);
    $second = floor(($unixEndTime - time()) % 86400 % 60);

    //   $fen = (int)($time / 60); // 剩下的毫秒数都算作分

    return $day . '天' . $hour . '时' . $minute . '分';
}

function getdistance($lng1, $lat1, $lng2, $lat2)
{//
    // 将角度转为狐度
    $radLat1 = deg2rad($lat1); //deg2rad()函数将角度转换为弧度
    $radLat2 = deg2rad($lat2);
    $radLng1 = deg2rad($lng1);
    $radLng2 = deg2rad($lng2);
    $a = $radLat1 - $radLat2;
    $b = $radLng1 - $radLng2;
    $s = 2 * asin(sqrt(pow(sin($a / 2), 2) + cos($radLat1) * cos($radLat2) * pow(sin($b / 2), 2))) * 6378.137 * 1000;
    return number_format($s, 2);
}

function returnSquarePoint($lat, $lng, $distance = 5)
{
    $earthdata = 6371;//地球半径，平均半径为6371km
    $dlng = 2 * asin(sin($distance / (2 * $earthdata)) / cos(deg2rad($lat)));
    $dlng = rad2deg($dlng);
    $dlat = $distance / $earthdata;
    $dlat = rad2deg($dlat);
//    $arr=array(
//        'left_top'=>array('lat'=>$lat + $dlat,'lng'=>$lng-$dlng),
//        'right_top'=>array('lat'=>$lat + $dlat, 'lng'=>$lng + $dlng),
//        'left_bottom'=>array('lat'=>$lat - $dlat, 'lng'=>$lng - $dlng),
//        'right_bottom'=>array('lat'=>$lat - $dlat, 'lng'=>$lng + $dlng)
//    );
    $arr = array(
        "lat_max" => $lat + $dlng,
        "lat_min" => $lat - $dlng,
        "lng_max" => $lng + $dlng,
        "lng_min" => $lng - $dlat,
    );
    return $arr;
}
