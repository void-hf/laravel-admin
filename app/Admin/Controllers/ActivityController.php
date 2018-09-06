<?php
/**
 * Created by IntelliJ IDEA.
 * User: EDZ
 * Date: 2018/09/06
 * Time: 下午 03:26
 */

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Admin\ActivityModel;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use Encore\Admin\Controllers\ModelForm;

class ActivityController extends Controller
{
    use ModelForm;
    private $header = "活动";

    public function index()
    {
        return Admin::content(function (Content $content) {
            $content->header($this->header);//这里是页面标题
            $content->description('列表');//这里是详情描述
            $content->body($this->grid());//指向grid方法显示表格
        });
    }

    public function create()
    {
        return Admin::content(function (Content $content) {
            $content->header($this->header);
            $content->description('新增');
            $content->body($this->form());//调用form方法，显示表单
        });
    }

    public function show()
    {
        return Admin::content(function (Content $content) {
            $content->header($this->header);
            $content->description('查看');
            $content->body($this->form());//调用form方法，显示表单

        });
    }

    public function edit($id)
    {
        return Admin::content(function (Content $content) use ($id) {
            $content->header($this->header);
            $content->description("修改");
            $content->body($this->form()->edit($id));//将id传给form，form的模型就是以id为查询条件的
        });
    }

    protected function form()
    {
        return Admin::form(ActivityModel::class, function (Form $form) {

            $form->text('activity_name', "活动名称")->default('activity_name')->rules("required");//required为名称规则，具体信息的定义在recourse=>lang=>zh_CN=>validation.php文件中
            $form->timeRange('start_time', 'end_time', '选择活动的时间范围');
            $form->switch('is_pass', '是否通过审核');
            $form->map('lat', 'lng', "请选择基地地点")->useTencentMap();
            $form->mobile('phone', '手机');
            $form->number("integral_num","打卡成功后获得的积分");
            $form->text('introduction_title' ,"基地简介标题");
            $form->image('activity_img', '图片')->uniqueName()->value('activity_img');//value显示默认图片
            $form->textarea('introduction' ,"基地简介");
            $form->ueditor('activity_des', '基地的介绍');
        });
    }

    protected function grid()
    {//页面显示的表格
        return Admin::grid(ActivityModel::class, function (Grid $grid) {
            $grid->id('id')->sortable();
            $grid->column('activity_name', '活动名称');
     //       $grid->column('activity_des', '活动描述');
            $grid->name('活动图片')->display(function ($name) {
                return "<img src='$name'>";
            });
            $grid->column('phone', '联系手机');
            $grid->column('introduction', '活动简介');
            $grid->disableExport();
            $grid->filter(function ($filter) {

                $filter->like('activity_name', '名称');//用名称作为条件模糊查询

            });
        });
    }
}