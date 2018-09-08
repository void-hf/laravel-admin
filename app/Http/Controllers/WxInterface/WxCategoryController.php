<?php
/**
 * Created by IntelliJ IDEA.
 * User: EDZ
 * Date: 2018/09/07
 * Time: 上午 10:35
 */

namespace App\Http\Controllers\WxInterface;

use App\Repositories\CategoryRepository;
use App\Http\Controllers\Controller;

class WxCategoryController extends Controller
{
    private $categoryRepository;

    public function __construct(CategoryRepository $categoryRepository)
    {
        $this->categoryRepository = $categoryRepository;
    }

    public function getCategoryList(){
        return show(0,"获取数据成功",$this->categoryRepository->getCategoryList()); //获取数据成功
    }

    public function getNearbyActivity(){//获取150米范围内的

    }

    public function Debug(){
        return show(0,"获取成功",returnSquarePoint(22,113));
    }

}