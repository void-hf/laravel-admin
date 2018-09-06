<?php
/**
 * Created by IntelliJ IDEA.
 * User: EDZ
 * Date: 2018/09/06
 * Time: 下午 03:27
 */

namespace App\Models\Admin;


use Illuminate\Database\Eloquent\Model;

class ActivityModel extends Model
{
    protected $table = "activity";//要连接的表名称
    public $timestamps = false;//将时间戳设置为false，否则数据表没有对应字段（create_at等字段）就会报错
}