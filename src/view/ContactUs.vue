<template>
  <div id="ContactUs">
    <div class="banner container-fuild text-center">联系我们</div>
    <div class="container">
      <div class="container-fuild ContactUs-container">
        <div class="row">
          <div class="col-xs-12 col-sm-12 col-md-6">
            <form class="form-horizontal" role="form">
              <div class="form-group">
                <label for="name" class="col-sm-2 control-label">姓名</label>
                <div class="col-sm-10 col-xs-12">
                  <input type="text" class="form-control" v-model="name" id="name" placeholder="请输入名字">
                </div>
              </div>
              <div class="form-group">
                <label for="email" class="col-sm-2 control-label">邮箱</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" v-model="email" id="email" placeholder="请输入邮箱">
                </div>
              </div>
              <div class="form-group">
                <label for="tel" class="col-sm-2 control-label">电话</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" v-model="phone" id="tel" placeholder="请输入电话">
                </div>
              </div>
              <div class="form-group">
                <label for="content" class="col-sm-2 control-label">内容</label>
                <div class="col-sm-10">
                  <textarea class="form-control" id="content" v-model="content" rows="8" placeholder="请输入内容"></textarea>
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                  <button type="submit" class="btn btn-default btn-block" @click="submitInfo()">提交</button>
                </div>
              </div>
            </form>
          </div>
          <div class="col-xs-12 col-sm-12 col-md-6">
            <div id="map" class="wow zoomIn"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import { WOW } from 'wowjs'
import BMap from "BMap";
export default {
  name: "ContactUs",
  data() {
    return {
      name:'',
      email:'',
      phone:'',
      content:''
    };
  },
  methods:{
    submitInfo(){
      console.log(this.name)
      this.name = '';
      this.email = '';
      this.phone = '';
      this.content = '';
      alert('我们已经收到了您的信息，如果有任何事情请直接电话或者邮箱联系我们！')
    }
  },
  mounted() {
    var map = new BMap.Map("map"); // 创建地图实例
    var point = new BMap.Point(113.855029,23.031703); // 创建点坐标
    map.centerAndZoom(point, 18); // 初始化地图，设置中心点坐标和地图级别
    map.enableScrollWheelZoom(true); //开启鼠标滚轮缩放
    var marker = new BMap.Marker(point); // 创建标注
    map.addOverlay(marker); // 将标注添加到地图中
    var opts = {
      width: 50, // 信息窗口宽度
      height: 10, // 信息窗口高度
      title: this.$store.state.companyInfo.name // 信息窗口标题
    };
    var infoWindow = new BMap.InfoWindow(
      "公司地址",
      opts
    ); // 创建信息窗口对象
    map.openInfoWindow(infoWindow, map.getCenter()); // 打开信息窗口
    var wow = new WOW();
    wow.init();
  }
};
</script>
<style scoped>
.banner {
  color: #fff;
  font-size: 30px;
  height: 150px;
  line-height: 150px;
  background-image: url("../assets/img/banner_1.jpg");
  background-repeat: no-repeat;
  background-size: cover;
  background-attachment: scroll;
  background-position: center center;
}
.ContactUs-container {
  padding: 80px 0;
  transition: all ease 0.5s;
  box-sizing: border-box;
}
#map {
  width: 100%;
  height: 365px;
}
.row {
  margin-right: 0;
  margin-left: 0;
}
@media screen and (max-width: 997px) {
  .ContactUs-container {
    padding: 20px 0;
  }
}
</style>

