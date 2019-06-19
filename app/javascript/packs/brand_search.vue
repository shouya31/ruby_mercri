<template>
  <div @mouseover="mouseOver" @mouseleave="mouseLeave">
    <li class="is-flex">
      <i class="fa fa-tags"></i>
      <p style="font-weight:bold;">
        <a href="https://www.mercari.com/jp/brand/" class="has-text-black">ブランドから探す</a>
      </p>  
      <ul v-show="active">
        <li>シャネル</li>
        <li>ナイキ</li>
        <li>グッチ</li>
        <li>ルイビトン</li>
        <li>シーラカンス</li>
        <li>ユニクロ</li>
        <li>ブランド一覧</li>
      </ul>
    </li>
  </div>
</template>

<script>
  export default {
    data: function() {
      return{
        active: false
      }
    },
    methods: {
        mouseOver: function(){
            console.log('event ok');
            this.active = true;   
        },
        mouseLeave: function() {
          console.log('leave ok');
          this.active = false;
        }
    }
}

</script>