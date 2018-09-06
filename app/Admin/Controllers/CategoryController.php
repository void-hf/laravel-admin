<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Models\CategoryModel;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use Encore\Admin\Controllers\ModelForm;

class CategoryController extends Controller
{
    use ModelForm;

    public function index()
    {
        return Admin::content(function (Content $content) {

            $content->header('广告');//这里是页面标题
            $content->description('列表');//这里是详情描述
            $content->body($this->grid());//指向grid方法显示表格
        });
    }

    public function create()
    {
        return Admin::content(function (Content $content) {
            $content->header('分类');
            $content->description('新增');
            $content->body($this->form());//调用form方法，显示表单
        });
    }

    public function show()
    {
        return Admin::content(function (Content $content) {
            $content->header('分类');
            $content->description('新增');
            $content->body($this->form());//调用form方法，显示表单

        });
    }

    public function edit($id)
    {
        return Admin::content(function (Content $content) use ($id) {
            $content->header('分类');
            $content->description("修改");
            $content->body($this->form()->edit($id));//将id传给form，form的模型就是以id为查询条件的
        });
    }

    protected function form()
    {//点击新增或者修改进入form表单

        return Admin::form(CategoryModel::class, function (Form $form) {
//form表单显示内容，$form->显示的控件格式【文本框，多选框，文件上传......】（‘数据库中相应的字段’，‘在页面上显示的名称’）->其他方法();

            $form->text('category_name',"名称")->default('category_name')->rules("required");//required为名称规则，具体信息的定义在recourse=>lang=>zh_CN=>validation.php文件中

            $form->text('sort_val',"排序")->default(CategoryModel::max('sort_val') + 1);//default定义默认值为数据表中sort字段的最大值+1

//            $form->image('logo','图片')->uniqueName()->value('1.jpg');//value显示默认图片
//
//            $form->editor('remark','备注');//富文本编辑框

//还有很多类型这里就不一一列举了，更具体的内容可以去官方文档查看
        });
    }

    protected function grid()
    {//页面显示的表格
        return Admin::grid(CategoryModel::class, function (Grid $grid) {
//grid显示表格内容，$grid->数据库中相应的字段（‘在页面上显示的名称’）->其他方法();或者$grid->column（‘数据库中相应的字段’，‘在页面上显示的名称’）->其他方法();

            $grid->id('id')->sortable();

            $grid->column('category_name','名称');

            $grid->column('sort_val','排序')->sortable();

            // $grid->disableExport();//禁用导出数据按钮

             $grid->filter(function ($filter) {

            //   $filter->disableIdFilter();//禁用查询过滤器

             $filter->like('category_name', '名称');//用名称作为条件模糊查询

        });
        });
}
}