<template>
    <div id="smartTown">
        <table class="table table-bordered table-striped table-hover">
          <thead style="background: #474747;color:#fff">
            <tr>
              <th scope="col">序号</th>
              <th scope="col">产品料号</th>
              <th scope="col">产品名称</th>
              <th scope="col">产品图纸</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="(item,index) in productList" :key="index">
              <th scope="row">{{index+1}}</th>
              <td>{{item.model}}</td>
              <td>{{item.name}}</td>
              <td>
                <!-- <img :src="item.pictureUrl" height="100px" style="margin:auto" alt=""> -->
                <div class="demo-image__preview">
                  <el-image
                    style="width: 100px;"
                    :src="item.pictureUrl"
                    :preview-src-list="[item.pictureUrl]">
                  </el-image>
                </div>
              </td>
            </tr>
          </tbody>
        </table>
    </div>
</template>
<script>
import { getProductList } from "@/api/user"
export default {
    name: 'smartTown',
    data(){
        return{
          productList:[],
          typeIndex:this.$route.query.type
        }
    },
    watch:{
      $route(to,from){
        // console.log(to.path);
        console.log(this.$route.query.type)
        this.typeIndex=this.$route.query.type
        this.getProductList()
      }
    },
    methods:{
      async getProductList() {
          let params = {
            category: this.typeIndex,
            keywords: "",
            page:1,
            size:999
          }
          let data = await getProductList(params);
          // console.log(data.body.data);
          this.productList = data.body.data
        }
    },
    mounted() {
      //获取当前类型产品数据
      console.log(this.$store.state.categoryList)
      this.getProductList()
    }
}
</script>
<style scoped>
  .table th,.table td{
    text-align: center;
    vertical-align: middle;
  }
  .table th,.table td img{
    cursor: pointer;
    transition: all 0.6s;
  }
</style>

