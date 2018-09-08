<?php
/**
 * Created by IntelliJ IDEA.
 * User: EDZ
 * Date: 2018/09/07
 * Time: 上午 10:31
 */

namespace App\Repositories;

use Illuminate\Support\Facades\DB;

class CategoryRepository extends BaseRepository
{
    protected $db = "category";

    public function __construct()
    {

    }

    public function getCategoryList()
    {
        return DB::table($this->db)->select("id","category_name")->orderByDesc("sort_val")->get();
    }
}