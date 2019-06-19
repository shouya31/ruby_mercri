import Vue from 'vue/dist/vue.esm'
import Brand_search from './brand_search.vue'
import Category_search from './category_search.vue'

new Vue({
    el: '#header',
    components: {
      'brand_search': Brand_search,
      'category_search': Category_search,
    }
});


