<template>
    <div id="CompanyIntroduction">
        <div class="banner container-fuild text-center">关于我们</div>
        <div class="container">
            <div class="row CompanyIntroduction-container">
                <div class="col-xs-12 col-sm-12 col-md-6 wow zoomIn">
                    <img class="img-responsive center-block" src="@/assets/img/about_img.png">
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <h3>LXCE东莞利向兴电子科技有限公司</h3>
                    <p class=".text-justify">东莞利向兴电子科技有限公司成立于2018年1月，座落于东莞寮步镇，毗邻松山湖。从事电子连接器的研发、制造、销售和服务于一体的高新技术企业，主要生产各种USB ，USB C Type 、Micro USB、端子胶芯、汽车端子等产品，广泛应用于电子设备、家用电器、办公设备等各类电子电器，以及汽车领域。</p>
                    <p class=".text-justify">团队超过20年的工作经验，均积累丰富的自主研发及生产制造能力，充分运用专业技术建立多元化的产品组合开发及扩展，具备高标准的USB C Type开发能力，并以提供最高品质的产品为首要任务。公司的主要目标是客户满意，并将不遗余力以合理的市场竞争提供最优质的产品。坚持以客户为核心，以诚信、实力、质量及服务获得业界的高度认可。</p>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import { WOW } from 'wowjs';
export default {
    name: 'CompanyIntroduction',
    data(){
        return{

        }
    },
    mounted(){
        var wow = new WOW();
        wow.init();
    }
}
</script>
<style scoped>
.banner{
    color: #fff;
    font-size: 30px;
    height: 150px;
    line-height: 150px;
    background-image: url('../assets/img/banner1.png');
    background-repeat: no-repeat;
    background-size: cover;
    background-attachment: scroll;
    background-position: center center;
}
.row{
    margin-right: 0;
    margin-left: 0;
}
.CompanyIntroduction-container{
    padding: 100px 0;
    color: #808080;
    transition: all ease 0.5s;
}
.CompanyIntroduction-container>div>p{
    font-size: 14px;
    line-height: 2.5rem;
}
@media screen and (max-width: 997px){
    .CompanyIntroduction-container{
    padding: 10px 0;
    color: #808080;
}
}
</style>

