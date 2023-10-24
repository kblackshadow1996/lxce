<template>
  <div id="HomePage">
    <!-- 轮播图 -->
    <div id="swiper" class="container-fuild">
      <div class="swiper-container banner-swiper">
        <div class="swiper-wrapper">
          <div class="swiper-slide" v-for="(item,index) in swiperList" :key="index">
            <img class="swiper-lazy" :data-src="item.img" alt="轮播图">
            <div class="swiper-lazy-preloader"></div>
            <div class="swiper-slide-title">
                <h1>{{item.title}}</h1>
                <p>{{item.content}}</p>
            </div>
          </div>
        </div>
        <!-- 如果需要分页器 -->
        <div class="swiper-pagination"></div>

        <!-- 如果需要导航按钮 -->
        <!-- <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div> -->
      </div>
    </div>
    <!-- 大数据管理系统 -->
    <div id="bigData" class="container-fuild">
      <div class="row bigData-container">
        <div class="col-xs-12 col-sm-12 col-md-6 wow zoomIn">
          <img class="img-responsive"  src="@/assets/img/Picture2.png" alt="大数据管理系统">
        </div>
        <div class="col-xs-12 col-sm-12 col-md-6 wow zoomIn">
          <img class="img-responsive"  src="@/assets/img/Picture11.png" alt="大数据管理系统">
        </div>
        <!-- <div class="col-xs-12 col-sm-12 col-md-6">
          <h2 class="bigData-title">
            多终端多场景连接方案
            <small>/ Multi-terminal multi-scenario connection solution</small>
          </h2>
          <p>当今正处移动计算机设备与物联网大数据高速发展阶段，各种设备互联让人眼花缭乱，新技术也层出不穷，如何才能跟上时代潮流，与新世界连接？</p>
          <p>我们会为您提供专业完美的连接器解决方案。</p>
          <h2 class="bigData-device">PC/PAD/手机/外设/汽车/无人机 &nbsp; 设备连接方案解决</h2>
          <button href="#" class="btn btn-lg btn-block btn-info" @click="goConcat()">联系我们</button>
        </div> -->
      </div>
      <div class="row bigData-container">
        <div class="col-xs-6 col-sm-6 col-md-3 wow zoomIn">
          <img class="img-responsive"  src="@/assets/img/Picture4.png" alt="大数据管理系统">
        </div>
        <div class="col-xs-6 col-sm-6 col-md-3 wow zoomIn">
          <img class="img-responsive"  src="@/assets/img/Picture5.png" alt="大数据管理系统">
        </div>
        <div class="col-xs-6 col-sm-6 col-md-3 wow zoomIn">
          <img class="img-responsive"  src="@/assets/img/Picture8.png" alt="大数据管理系统">
        </div>
        <div class="col-xs-6 col-sm-6 col-md-3 wow zoomIn">
          <img class="img-responsive"  src="@/assets/img/Picture14.png" alt="大数据管理系统">
        </div>
      </div>
      <div class="row bigData-container">
        <div class="col-xs-24 col-sm-24 col-md-12" style="hieght:100%;margin:auto">
          <h2 class="bigData-title">
            多终端多场景连接方案
            <small>/ Multi-terminal multi-scenario connection solution</small>
          </h2>
          <p>当今正处移动计算机设备与物联网大数据高速发展阶段，各种设备互联让人眼花缭乱，新技术也层出不穷，如何才能跟上时代潮流，与新世界连接？</p>
          <p>我们会为您提供专业完美的连接器解决方案。</p>
          <h2 class="bigData-device">PC/PAD/手机/外设/新能源汽车/无人机 &nbsp; 设备连接方案解决</h2>
          <button href="#" class="btn btn-lg btn-block btn-info" @click="goProduct()">查看更多</button>
        </div>
      </div>
    </div>
    <!-- 客户评价 -->
    <div id="customer" class="container-fuild">
      <div class="container customer-container" style="width:80%">
        <p class="customer-title text-center">服务客户</p>
        <div class="swiper-container customer-swiper hidden-xs" style="background: #fff;">
          <div class="swiper-wrapper">
            <div
              class="swiper-slide customer-block"
              v-for="(item,index) in customerList"
              :key="index"
            >
              <div class="customer-logo">
                <img class="center-block" :src="item.logo" alt="logo">
              </div>
              <div class="customer-yh">
                <img src="@/assets/img/yinhao.png" alt="引号">
              </div>
              <div class="customer-content1">
                <small>{{item.content}}</small>
              </div>
              <div class="customer-content2">{{item.title}}</div>
            </div>
          </div>
          <!-- 如果需要导航按钮 -->
          <!-- <div class="swiper-button-prev"></div>
          <div class="swiper-button-next"></div> -->
        </div>
        <div class="row visible-xs customer-block">
          <div class="col-xs-12" v-for="(item,index) in customerList" :key="index">
            <div class="customer-logo">
              <img class="center-block" :src="item.logo" alt="logo">
            </div>
            <div class="customer-yh">
              <img src="@/assets/img/yinhao.png" alt="引号">
            </div>
            <div class="customer-content1">
              <small>{{item.content}}</small>
            </div>
            <div class="customer-content2">
              <small>{{item.title}}</small>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- 您身边的IT专家 -->
    <div id="contactUs" class="container-fuild text-center">
      <div class="container contactUs-container wow slideInUp">
        <h1>您身边的连接器专家</h1>
        <h3>7x24小时提供出色的连接器方案解决服务</h3>
        <button @click="goConcat()"
          class="btn btn-default btn-sm"
          onmouseleave="this.style.borderColor='#ffffff'; this.style.backgroundColor='#ffffff'; this.style.color='#3f3f3f';"
          onmouseenter="this.style.backgroundColor='transparent'; this.style.borderColor='#ffffff'; this.style.color='#ffffff';"
        >联系我们</button>
        <div class="contactUs-contactWay">
          <span></span>
          <span></span>
          <span></span>
        </div>
      </div>
    </div>
    <!-- 为什么选择我们 -->
    <div id="whyChooseUs" class="conatiner-fuild">
      <div class="container">
        <div class="whyChooseUs-title text-center">
          <p>为什么选择我们的服务</p>
          <p>THE REASON TO CHOOSING US</p>
        </div>
        <div class="row">
          <div
            class="col-xs-12 col-sm-6 col-md-3 server-wrapper"
            v-for="(item,index) in serverList"
            :key="index"
          >
            <div
              class="server-block wow slideInUp"
              onmouseenter="this.style.color='#28f';this.style.borderColor='#28f'"
              onmouseleave="this.style.color='#666';this.style.borderColor='#ccc'"
            >
              <img class="center-block" :src="item.logo" alt="logo">
              <p class="text-center">{{item.title}}</p>
              <div
                class="text-center"
                v-html="item.content"
                onmouseenter="this.style.color='#28f'"
                onmouseleave="this.style.color='#ccc'"
              ></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import Swiper from "swiper";
import { WOW } from 'wowjs';
import { getCompany } from "@/api/user"
export default {
  name: "HomePage",
  data() {
    return {
      swiperList: [
        {
          img: require("@/assets/img/banner1.png"),
          path: "",
          title: '您身边的连接器专家1',
          content: '宣传简介宣传简介宣传简介宣传简介宣传简介宣传简介宣传简介宣传简介',
        },
        {
          img: require("@/assets/img/banner2.jpg"),
          path: "",
          title: '您身边的连接器专家2',
          content: '宣传简介宣传简介宣传简介宣传简介宣传简介宣传简介宣传简介宣传简介',
        },
        {
          img: require("@/assets/img/banner1.png"),
          path: "",
          title: '您身边的连接器专家3',
          content: '宣传简介宣传简介宣传简介宣传简介宣传简介宣传简介宣传简介宣传简介',
        },
        {
          img: require("@/assets/img/banner2.jpg"),
          path: "",
          title: '您身边的连接器专家4',
          content: '宣传简介宣传简介宣传简介宣传简介宣传简介宣传简介宣传简介宣传简介',
        }
      ],
      customerList: [
        {
          logo: require("@/assets/img/logo_huawei.png"),
          title:
            "华为技术有限公司 Huawei Technologies Co., Ltd.",
          content:
            "华为是全球领先的信息与通信技术（ICT）解决方案供应商，专注于ICT领域，坚持稳健经营、持续创新、开放合作，在电信运营商、企业、终端和云计算等领域构筑了端到端的解决方案优势"
        },
        {
          logo: require("@/assets/img/logo_google.png"),
          title:
            "Google有限公司 Google LLC",
          content:
            "Google（中文译名：谷歌）是总部位于美国加州山景城的跨国科技公司，为Alphabet（字母控股）的子公司，业务范围涵盖网际网路广告、网际网路搜寻、云端运算等领域，开发并提供大量基于网际网路的产品与服务"
        },
        {
          logo: require("@/assets/img/logo_samsung.jpg"),
          title:
            "三星电子株式会社 Samsung Electronics Co., Ltd.",
          content:
            "三星电子，是三星集团旗下的子公司，韩国最大的消费电子产品及电子元件制造商，亦是全球最大的资讯科技公司[7]。2021年，三星电子在Interbrand全球品牌排行榜中名列第五位，连续第十年进入世界品牌前十强。"
        },
        {
          logo: require("@/assets/img/logo_oppo.jpg"),
          title:
            "OPPO广东移动通信有限公司",
          content:
            "OPPO，于2004年创立，是一家全球领先的智能终端制造商和移动互联网服务提供商，业务遍及50多个国家和地区。通过40多万个销售网点及2500个服务中心，与全球用户共享科技之美。是全球第四大智能手机制造商(包括一加)。"
        },
        {
          logo: require("@/assets/img/logo_vivo.jpg"),
          title:
            "维沃移动通信有限公司",
          content:
            "vivo品牌产品包括智能手机、平板电脑、智能手表等，截至2022年8月，进驻60多个国家和地区，全球用户覆盖4亿多人，研发覆盖深圳、东莞（总部）、北京、上海、南京、杭州、西安等。"
        },
        {
          logo: require("@/assets/img/logo_asus.jpg"),
          title:
            "华硕电脑股份有限公司",
          content:
            "华硕，品牌为“ASUS”，成立于1990年4月2日产品主要为家用与商务用台式机、笔记本电脑、平板电脑、主板、显卡、显示器、存储设备、外围设备、移动电话、可穿戴设备、投影机、网络通信设备、工作站、服务器。"
        },
        {
          logo: require("@/assets/img/logo_lenovo.png"),
          title:
            "联想集团 Lenovo",
          content:
            "联想公司是中国的一家跨国科技公司，成立于1984年，主要研发、生产和销售笔记型电脑、一体机、台式电脑、服务器、手机、平板电脑，游戏主机，以及其他移动互联、数码、电脑周边等类产品。"
        },
        {
          logo: require("@/assets/img/logo_panasonic.png"),
          title:
            "松下电器产业株式会社",
          content:
            "松下电器的产品线极广，除了家电以外，还生产数位电子产品，如DVD、DV（数位摄影机）、MP3播放机、数码相机、液晶电视、笔记本电脑等。还扩及到电子零件、电工零件（如插座盖板）、半导体等"
        },
        {
          logo: require("@/assets/img/logo_shse.jpg"),
          title:
            "森海塞尔 Sennheiser",
          content:
            "森海塞尔是世界公认领先的专业话筒和耳机制造商。森海塞尔不断地引领着新的音频技术的潮流，它也是业界公认的无线电、红外声传输技术、听诊式耳机、航空通话耳机、多媒体传播、呼叫中心耳机和头戴式耳机的先驱。"
        },
        {
          logo: require("@/assets/img/logo_logi.jpg"),
          title:
            "罗技（Logitech）",
          content:
            "罗技（Logitech）成立于1981年，是一家起源于瑞士的全球著名云周边设备供应商,产品业务分为五大板块：键鼠及其他PC周边产品品类、游戏品类、音乐品类、视频会议系统和智能家居业务。"
        },
        {
          logo: require("@/assets/img/logo_razer.jpg"),
          title:
            "雷蛇（Razer）",
          content:
            "Razer 雷蛇创立于2005年，是一家在新加坡创立的游戏周边设备公司，其logo是标志性的三头蛇徽标。粉丝遍布各大洲的雷蛇，设计并打造了专为玩家提供硬件、软件和服务的一体化生态系统。"
        },
        {
          logo: require("@/assets/img/logo_jbl.png"),
          title:
            "JBL",
          content:
            "JBL是全球最大的专业扬声器生产商，从原材料开发、喇叭单元的设计和生产、音箱的设计和生产一切都能全盘控制在自己的手中。JBL的服务范围非常广泛，在专业领域：电影院、大型音响工程、大型流动演出、录音室监听、乐队 。"
        },
        {
          logo: require("@/assets/img/logo_klt.png"),
          title:
            "Skullcandy 骷髅头",
          content:
            "Skullcandy成立于2003年，是美国市场以生产设计耳机及其配件为主的公司，股票代码为“SKUL”，降噪和隔音耳机是Skullcandy的主力产品，产品的顾客群主要是年轻人及热爱生活的人们。"
        },
        {
          logo: require("@/assets/img/logo_edifier.jpg"),
          title:
            "EDIFIER 漫步者",
          content:
            "漫步者创立于1996年，漫步者多年来专注于音频技术的研究开发与产品应用，旗下产品线涵盖多媒体电脑音箱、家用音响、汽车音响、耳机等领域，素以卓越音质、优良做工和前瞻设计而闻名，在业内有着极高的知名度和良好口碑。"
        },
        {
          logo: require("@/assets/img/logo_merry.jpg"),
          title:
            "美律电子（深圳）有限公司",
          content:
            "美律电子(深圳)有限公司于1989年04月18日在深圳市市场监督管理局龙华局登记成立。法定代表人赖文针，公司经营范围包括生产电话受话器、麦克风、喇叭、防盗器、报警器、电子发射器、电子接收器、三用电表等。"
        },
        {
          logo: require("@/assets/img/logo_jctc.png"),
          title:
            "JCTC 胜蓝股份",
          content:
            "JCTC 胜蓝专注于电子连接器、线束组件、精密零部件的研发、生产及销售。产品包括：消费类电子连接器、精密零组件、新能源汽车连接器，以及各类高品质创新的高低压电线电缆、伺服线束、线束组件等配线系统应用方案和产品。"
        },
      ],
      serverList: [
        {
          logo: require("@/assets/img/tel.png"),
          title: "核心优势1",
          content: "<p>由专业客服提供人工服务</p>负责疑难问题和故障受理"
        },
        {
          logo: require("@/assets/img/computer.png"),
          title: "核心优势2",
          content: "<p>利用远程视频工具，提供协助</p>帮助客户进行调试、解决故障"
        },
        {
          logo: require("@/assets/img/qq.png"),
          title: "核心优势3",
          content: "<p>利用企业QQ提供在线解答</p>帮助企业快速准确解决问题和故障"
        },
        {
          logo: require("@/assets/img/skill.png"),
          title: "核心优势4",
          content: "<p>由技术支持工程师，负责问题解答</p>需求受理及故障受理"
        }
      ]
    };
  },
  mounted() {
    /* banner-swiper */
    new Swiper(".banner-swiper", {
      loop: true, // 循环模式选项
      effect: 'fade',
      //自动播放
      autoplay: {
        delay: 3000,
        stopOnLastSlide: false,
        disableOnInteraction: false
      },
      // 如果需要分页器
      pagination: {
        el: ".swiper-pagination",
        clickable: true
      },
      // 如果需要前进后退按钮
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev"
      },
      // 延迟加载
      lazy: {
        loadPrevNext: true
      },
      observer: true, //修改swiper自己或子元素时，自动初始化swiper
      observeParents: true //修改swiper的父元素时，自动初始化swiper
    });
    /* customer-swiper */
    new Swiper(".customer-swiper", {
      loop: true, // 循环模式选项
      slidesPerView: 5,
      //自动播放
      autoplay: {
        delay: 3000,
        stopOnLastSlide: false,
        disableOnInteraction: false
      },
      // 如果需要前进后退按钮
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev"
      },
      observer: true, //修改swiper自己或子元素时，自动初始化swiper
      observeParents: true //修改swiper的父元素时，自动初始化swiper
    });
    /* wowjs动画 */
    var wow = new WOW({
      boxClass: 'wow',
      animateClass: 'animated',
      offset: 0,
      mobile: true,
      live: true
    })
    wow.init();
    if(!this.$store.state.companyInfo.name){
      this.getCompany()
    }
  },
  methods:{
    goConcat(){
      // 跳转联系页面  /contactus
      this.$router.push('/contactus')
      this.$store.state.navIndex = 5
    },
    goProduct(){
      // 跳转联系页面  /contactus
      this.$router.push('/software?type=1')
      this.$store.state.navIndex = 1
    },
    async getCompany() {
      let data = await getCompany();
      this.$store.state.companyInfo = data.body
    }
  }
};
</script>
<style scoped>
/* 整体盒子 */
#HomePage {
  width: 100%;
}

/* 轮播图 */
#swiper {
  height: 600px;
}
#swiper .banner-swiper {
  width: 100%;
  height: 100%;
}
#swiper .banner-swiper .swiper-slide img {
  width: 100%;
  height: 100%;
}
#swiper .banner-swiper .swiper-slide{
  position: relative;
}
#swiper .banner-swiper .swiper-slide-title {
  position: absolute;
  top: 0;
  left: 0;
  z-index: 999999999;
  width: 100%;
  height: 100%;
  color: #fff;
  background: rgba(51, 51, 51, 0.534);
  text-align: center;
  line-height: 80px;
}
#swiper .banner-swiper .swiper-slide-title > h1{
  font-size: 50px;
  margin-top: 12%;
}
#swiper .banner-swiper .swiper-slide-title > p{
  font-size: 20px;
  margin-top: 1%;
  font-weight: 700;
}
/* 大数据管理系统 */
#bigData {
  width: 80%;
  margin: auto;
  padding: 100px;
  transition: all ease 0.6s;
  box-sizing: border-box;
}
#bigData .bigData-title {
  padding-bottom: 10px;
  border-bottom: 1px solid #ccc;
}
#bigData p {
  font-size: 14px;
  color: #333;
  line-height: 2rem;
}
#bigData .bigData-device {
  margin: 50px 0 20px;
}
#bigData .row div{
  overflow: hidden;
}
#bigData img{
  cursor: pointer;
  transition: all 0.6s;
}
#bigData img:hover{
  transform: scale(1.2);
}

/* 您身边的IT专家 */
#contactUs {
  color: #fff;
  height: 400px;
  background: url("../assets/img/contact_us_bg.jpg") 0 0 no-repeat;
  background-size: 100% 100%;
  transition: all ease 0.6s;
}
#contactUs .contactUs-container {
  padding-top: 50px;
}
#contactUs .contactUs-container button {
  width: 300px;
  height: 50px;
  margin-top: 40px;
}
#contactUs .contactUs-container .contactUs-contactWay span {
  display: inline-block;
  width: 48px;
  height: 48px;
  margin: 30px;
}
#contactUs .contactUs-container .contactUs-contactWay span:nth-of-type(1) {
  background: url("../assets/img/weixin.png") 0 0 no-repeat;
  background-size: 100% 100%;
}
#contactUs .contactUs-container .contactUs-contactWay span:nth-of-type(2) {
  background: url("../assets/img/weibo.png") 0 0 no-repeat;
  background-size: 100% 100%;
}
#contactUs .contactUs-container .contactUs-contactWay span:nth-of-type(3) {
  background: url("../assets/img/twitter.png") 0 0 no-repeat;
  background-size: 100% 100%;
}

/* 客户评价 */
#customer {
  padding: 50px 0;
  box-sizing: border-box;
  background: #efefef;
  transition: all ease 0.6s;
}
#customer .customer-title {
  font-size: 30px;
  color: rgb(102, 102, 102);
  margin: 0 0 30px;
}
#customer .customer-block {
  background: #fff;
  padding: 30px;
}
#customer .customer-logo img {
  width: 94px;
  height: 94px;
  border: 1px solid #ccc;
}
#customer .customer-yh img {
  width: 34px;
  height: 34px;
}
#customer .customer-content1 {
  padding-bottom: 20px;
  border-bottom: 1px solid #0ce9f1;
}
#customer .customer-content2 {
  padding-top: 20px;
}
/* 为什么选择我们 */
#whyChooseUs {
  padding: 100px;
}
#whyChooseUs .whyChooseUs-title {
  margin-bottom: 50px;
}
#whyChooseUs .whyChooseUs-title p:nth-of-type(1) {
  font-size: 25px;
  font-weight: 500;
}
#whyChooseUs .whyChooseUs-title p:nth-of-type(2) {
  font-size: 14px;
}
#whyChooseUs .server-block {
  padding: 50px 20px;
  border: 1px solid #ccc;
  border-bottom: 5px solid #ccc;
}
#whyChooseUs .server-block img {
  width: 48px;
  height: 48px;
}
#whyChooseUs .server-block > p {
  font-size: 20px;
  margin: 30px 0;
}
#whyChooseUs .server-block > div {
  color: #ccc;
}
/* 媒体查询（手机） */
@media screen and (max-width: 768px) {
  #swiper {
    height: 200px;
  }
  #bigData {
    padding: 30px;
  }
  #bigData .bigData-title {
    font-size: 20px;
  }
  #bigData .bigData-device {
    font-size: 20px;
    margin: 10px 0 10px;
  }
  #contactUs {
    height: 200px;
    transition: all ease 0.6s;
  }
  #contactUs .contactUs-container {
    padding-top: 0;
  }
  #contactUs .contactUs-container h1 {
    font-size: 25px;
  }
  #contactUs .contactUs-container h3 {
    font-size: 18px;
  }
  #contactUs .contactUs-container button {
    width: 200px;
    height: 30px;
    margin-top: 20px;
  }
  #contactUs .contactUs-container .contactUs-contactWay span {
    display: inline-block;
    width: 28px;
    height: 28px;
    margin: 10px;
  }
  #customer {
    padding: 30px 0;
    box-sizing: border-box;
    background: #fff;
  }
  #customer .customer-title {
    font-size: 16px;
    font-weight: bold;
  }
  #customer .customer-logo img {
    width: 48px;
    height: 48px;
  }
  #customer .customer-block {
    padding: 30px;
  }
  #customer .customer-block > div {
    padding: 30px 0;
  }
  #whyChooseUs {
    padding: 20px 0;
    transition: all ease 0.6s;
  }
  #whyChooseUs .whyChooseUs-title p:nth-of-type(1) {
    font-size: 20px;
    font-weight: 700;
  }
  #whyChooseUs .whyChooseUs-title p:nth-of-type(2) {
    font-size: 12px;
  }
  #whyChooseUs .server-block {
    padding: 50px 0;
    border: 1px solid #ccc;
    border-bottom: 5px solid #ccc;
  }
  #whyChooseUs .server-block img {
    width: 48px;
    height: 48px;
  }
  #whyChooseUs .server-block > p {
    font-size: 20px;
    margin: 30px 0;
  }
  #whyChooseUs .server-block > div {
    color: #ccc;
  }
}

/* 媒体查询（平板） */
@media screen and (min-width: 768px) and (max-width: 996px) {
  #swiper {
    height: 400px;
  }
  #bigData {
    padding: 60px;
  }
  #bigData .bigData-title {
    font-size: 30px;
  }
  #bigData .bigData-device {
    font-size: 30px;
    margin: 30px 0 15px;
  }
  #contactUs {
    height: 300px;
  }
  #contactUs .contactUs-container {
    padding-top: 50px;
  }
  #contactUs .contactUs-container h1 {
    font-size: 30px;
  }
  #contactUs .contactUs-container h3 {
    font-size: 20px;
  }
  #contactUs .contactUs-container button {
    width: 300px;
    height: 50px;
    margin-top: 30px;
  }
  #contactUs .contactUs-container .contactUs-contactWay span {
    display: inline-block;
    width: 32px;
    height: 32px;
    margin: 15px;
  }
  #customer .customer-title {
    font-size: 24px;
  }
  #whyChooseUs {
    padding: 20px 0;
  }
}
</style>

