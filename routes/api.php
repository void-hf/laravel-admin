<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::any('/userReg', 'WxInterface\WxUserController@userReg');//注册用户

Route::any('/userLoginByOpenid', 'WxInterface\WxUserController@userLoginByOpenid');//通过openid获取用户token

Route::any('/checkUserLoginByToken', 'WxInterface\WxUserController@checkUserLoginByToken');//判断token是否有效

/////////////////////////////////////////分类接口
Route::any('/getCategoryList', 'WxInterface\WxCategoryController@getCategoryList');//获取分类接口

Route::any('/Debug', 'WxInterface\WxCategoryController@Debug');//获取分类接口

Route::any('/getNearbyActivity', 'WxInterface\WxBaseController@getNearbyActivity');//获取最近的活动

Route::any('/punchClockUp', 'WxInterface\WxBaseController@punchClockUp');//打开接口

Route::any('/punchClockDown', 'WxInterface\WxBaseController@punchClockDown');//取消签到功能

Route::any('/Activitylist', 'WxInterface\WxBaseController@Activitylist');//获取活动列表
