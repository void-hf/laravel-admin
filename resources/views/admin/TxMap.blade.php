<script src="https://map.qq.com/api/js?v=2.exp"></script>
<script type="text/javascript">
    var upload_file_list = new Array();
    var addNum  = 0;
    $(document).ready(function () {
        layui.use('form', function() {
            var form = layui.form; //只有执行了这一步，部分表单元素才会自动修饰成功
            $("select[name='school_id']").val({{$activity->school_id}});
            $("#series_id").val("{{$activity->series_id}}");
            form.render('select'); //刷新select选择框渲染
        });
    });
        //全选
        form.on('submit(formDemo)', function(data){
            var contentText = layedit.getContent(editIndex);
            var start_time = new Date($('#start_time').val());
            var end_time = new Date($('#end_time').val());
            $('input[name="start_time"]').val(start_time.getTime()/1000);
            $('input[name="end_time"]').val(end_time.getTime()/1000);
            $("input[name='activity_des']").val(contentText);
            $("input[name='addFilelist']").val(JSON.stringify(upload_file_list));
            console.log(data.field.title);
            $.ajax({
                type: "POST",
                url: "activityEditById",
                data: $("form").serialize(),
                dataType: "json",
                success: function(data){
                    if (data.status==0){
                        dialog.error(data.msg);
                    }else if (data.status==1){
                        dialog.success(data.msg,"activity-list");
                    }
                },
                error:function(){
                    dialog.error(data.msg);
                }
            });
        });
        var demoListView = $('#demoList')
            ,uploadListIns = upload.render({
            elem: '#testList'
            ,url: 'uploadActivityFollow'
            ,accept: 'file'
            , headers: {
                'X-CSRF-TOKEN': '{{ csrf_token() }}',
            }
            ,multiple: true
            ,auto: false
            ,bindAction: '#testListAction'
            ,choose: function(obj){
                var files = this.files = obj.pushFile(); //将每次选择的文件追加到文件队列
                //读取本地文件
                obj.preview(function(index, file, result){
                    var tr = $(['<tr id="upload-'+ index +'">'
                        ,'<td>'+ file.name +'</td>'
                        ,'<td>'+ (file.size/1014).toFixed(1) +'kb</td>'
                        ,'<td>等待上传</td>'
                        ,'<td>'
                        ,'<button class="layui-btn layui-btn-xs demo-reload layui-hide">重传</button>'
                        ,'<button class="layui-btn layui-btn-xs layui-btn-danger demo-delete">删除</button>'
                        ,'</td>'
                        ,'</tr>'].join(''));
                    //单个重传
                    tr.find('.demo-reload').on('click', function(){
                        obj.upload(index, file);
                    });
                    //删除
                    tr.find('.demo-delete').on('click', function(){
                        delete files[index]; //删除对应的文件
                        tr.remove();
                        uploadListIns.config.elem.next()[0].value = ''; //清空 input file 值，以免删除后出现同名文件不可选
                    });
                    demoListView.append(tr);
                });
            }
            ,done: function(res, index, upload){
                if(res.status == 1){ //上传成功
                    var tr = demoListView.find('tr#upload-'+ index)
                        ,tds = tr.children();
                    tds.eq(2).html('<span style="color: #5FB878;">上传成功</span>');
                    tds.eq(3).html(''); //清空操作
                    //   upload_file_list[addNum] = res.data.src;
                    var j = {};
                    j.src = res.data.src;
                    j.title = res.data.title;
                    upload_file_list.push(j);
                    addNum++;
                    return delete this.files[index]; //删除文件队列已经上传成功的文件
                }
                this.error(index, upload);
            }
            ,error: function(index, upload){
                var tr = demoListView.find('tr#upload-'+ index)
                    ,tds = tr.children();
                tds.eq(2).html('<span style="color: #FF5722;">上传失败</span>');
                tds.eq(3).find('.demo-reload').removeClass('layui-hide'); //显示重传
            }
        });
    });
    /////////////////////////////////////////////////////////////////////地图
    var searchService,map,markers = [],marker;
    function init() {
        var myLatlng = new qq.maps.LatLng({{$activity->lat}}, {{$activity->lng}});
        var myOptions = {
            zoom: 17,
            center: myLatlng
        };

        var map = new qq.maps.Map(document.getElementById("container"), myOptions);

        setTimeout(function(){
            marker=new qq.maps.Marker({
                position:myLatlng,
                animation:qq.maps.MarkerAnimation.DROP,
                map:map
            });
        },500);

        //获取城市列表接口设置中心点
        citylocation = new qq.maps.CityService({
            complete : function(result){
                map.setCenter(result.detail.latLng);
            }
        });
        //调用searchLocalCity();方法    根据用户IP查询城市信息。
        //添加监听事件   获取鼠标单击事件
        qq.maps.event.addListener(map, 'click', function(event) {
            marker.setMap(null);
            $("#l_num").val(event.latLng.getLat());
            $("#n_num").val(event.latLng.getLng());
            $("input[name='lat']").val(event.latLng.getLat());
            $("input[name='lng']").val(event.latLng.getLng());
            marker=new qq.maps.Marker({
                position:event.latLng,
                animation:qq.maps.MarkerAnimation.DROP,
                map:map
            });
        });
        searchService = new qq.maps.SearchService({
            complete : function(results){
                var pois = results.detail.pois;
                for(var i = 0,l = pois.length;i < l; i++){
                    var poi = pois[i];
                    latlngBounds.extend(poi.latLng);
                    var marker = new qq.maps.Marker({
                        map:map,
                        position: poi.latLng
                    });
                    marker.setTitle(i+1);
                    markers.push(marker);
                }
                map.fitBounds(latlngBounds);
            }
        });
        var latlngBounds = new qq.maps.LatLngBounds();
        //调用Poi检索类
    }
    //清除地图上的marker
    function clearOverlays(overlays){
        var overlay;
        while(overlay = overlays.pop()){
            overlay.setMap(null);
        }
    }
    function loadScript() {
        var script = document.createElement("script");
        script.type = "text/javascript";
        script.src = "https://map.qq.com/api/js?v=2.exp&callback=init";
        document.body.appendChild(script);
    }
    function searchKeyword() {
        var keyword = document.getElementById("keyword").value;
        var region = document.getElementById("region").value;
        clearOverlays(markers);
        searchService.setLocation(region);
        searchService.search(keyword);
    }
    window.onload = loadScript;
</script>