<template>
  <div @mouseover="mouseOver" @mouseleave="mouseLeave">
    <li>
      <p style="font-weight:bold;">
        <i class="fa fa-tags"></i>
        <a href="https://www.mercari.com/jp/brand/" class="has-text-black">ブランドから探す</a>
      </p>  
      <div v-if="active">
        <ul v-for="item in brand">
          <li class="has-text-black">{{item.name}}</li>
        </ul>
      </div>
    </li>
  </div>
</template>

<script>

const brand = [
  {name: 'シャネル'},
  {name: 'ナイキ'},
  {name: 'グッチ'},
  {name: 'ルイビトン'},
  {name: 'モンクレー'},
  {name: 'シーラカンス'},
  {name: 'ユニクロ'},
  {name: 'ブランド一覧'},

]
  export default {
    data: function() {
      return{
        active: false,
        name: "ブランドから探す",
        brand: brand,
      }
    },
    methods: {
        mouseOver: function(){
            this.active = true;   
        },
        mouseLeave: function() {
          this.active = false;
        }
    }
}
</script>