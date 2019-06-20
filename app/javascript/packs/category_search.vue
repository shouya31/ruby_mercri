<template>
  <div class="mercari-list-left" style='margin:0 10px;'
    @mouseover="mouseOver"
    @mouseleave="mouseLeave"
  
  >
    <i class="fa fa-list"></i>
    <div class="has-text-black" style="font-weight: bold;">
      <p>{{name}}</p>
      <!-- ここから階層が始まる -->
      <!-- １階層目 -->
      <div v-if="active">
        <ul
          v-for="item in items"
        >
          <li 
            @mouseover="genreOver"
            
          >
            {{ item.name }}
          </li>
          <!-- ２階層目 -->
          <div class="" 
            v-if="active2"
          >
            <li class="is-flex mercari-fixed_list" 
              v-for="item in item.page1"
              @mouseover="itemOver"
              @mouseleave="itemLeave"
            >
              {{item.name}}
              <!-- ３階層目 -->
              <div class="" 
                v-if="active3"
              >
                <li 
                  class="is-flex mercari-fixed_list" 
                  v-for="item in item.page2"
                >
                  {{item.name}}
                </li>
              </div>
            </li>
          </div>
        </ul>
      </div>
      <!-- 階層終了！ -->
    </div>
  </div>
</template>

<script>
const items = [
  {
    name: 'レディース',
    page1: [
      { 
        name: 'トップス',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      { 
        name: 'ジャケット',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ],
      },
      { 
        name: 'パンツ',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      { 
        name: 'スカート',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      {
        name: 'ブラジャー',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
    ],
  },

  { 
    name: 'メンズ',
    page1: [
      { 
        name: 'トップス',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      { 
        name: 'ジャケット',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ],
      },
      { 
        name: 'パンツ',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      { 
        name: 'スカート',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      {
        name: 'ブラジャー',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
    ],
  },
  { 
    name: 'ベビー・キッズ',
    page1: [
      { 
        name: 'トップス',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      { 
        name: 'ジャケット',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ],
      },
      { 
        name: 'パンツ',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      { 
        name: 'スカート',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      {
        name: 'ブラジャー',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
    ],
  },
  {
    name: 'インテリア・住まい・小物',
    page1: [
      { 
        name: 'トップス',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      { 
        name: 'ジャケット',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ],
      },
      { 
        name: 'パンツ',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      { 
        name: 'スカート',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      {
        name: 'ブラジャー',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
    ],
  },
  { 
    name: '本、おもちゃ、ゲーム',
    page1: [
      { 
        name: 'トップス',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      { 
        name: 'ジャケット',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ],
      },
      { 
        name: 'パンツ',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      { 
        name: 'スカート',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      {
        name: 'ブラジャー',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
    ],
  },
  { 
    name: 'コスメ、香水、美容',
    page1: [
      { 
        name: 'トップス',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      { 
        name: 'ジャケット',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ],
      },
      { 
        name: 'パンツ',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      { 
        name: 'スカート',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      {
        name: 'ブラジャー',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
    ],

  },
  {
    name: '家電、スマホ、カメラ',
    page1: [
      { 
        name: 'トップス',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      { 
        name: 'ジャケット',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ],
      },
      { 
        name: 'パンツ',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      { 
        name: 'スカート',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      {
        name: 'ブラジャー',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
    ],
  },
  {
    name: 'スポーツ・レジャー',
    page1: [
      { 
        name: 'トップス',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      { 
        name: 'ジャケット',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ],
      },
      { 
        name: 'パンツ',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      { 
        name: 'スカート',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      {
        name: 'ブラジャー',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
    ],
  },
  {
    name: 'ハイメイド',
    page1: [
      { 
        name: 'トップス',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      { 
        name: 'ジャケット',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ],
      },
      { 
        name: 'パンツ',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      { 
        name: 'スカート',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      {
        name: 'ブラジャー',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
    ],
  },
  {
    name: 'チケット',
    page1: [
      { 
        name: 'トップス',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      { 
        name: 'ジャケット',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ],
      },
      { 
        name: 'パンツ',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      { 
        name: 'スカート',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      {
        name: 'ブラジャー',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
    ],
  },
  {
    name: '自転車、オートバイ',
    page1: [
      { 
        name: 'トップス',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      { 
        name: 'ジャケット',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ],
      },
      { 
        name: 'パンツ',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      { 
        name: 'スカート',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      {
        name: 'ブラジャー',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
    ],
  },
  {
    name: 'その他',
    page1: [
      { 
        name: 'トップス',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      { 
        name: 'ジャケット',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ],
      },
      { 
        name: 'パンツ',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      { 
        name: 'スカート',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      {
        name: 'ブラジャー',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
    ],
  },
  {
    name: 'カテゴリー一覧',
    page1: [
      { 
        name: 'トップス',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      { 
        name: 'ジャケット',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ],
      },
      { 
        name: 'パンツ',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      { 
        name: 'スカート',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
      {
        name: 'ブラジャー',
        page2: [
          { name: 'tttt' },
          { name: 'ddddd' },
          { name: 'gggggg' },
          { name: 'eeeeeeee' },
          { name: 'ブラジャー' },
        ], 
      },
    ],
  },
]

export default {
  data: function() {
    return {
      name: "カテゴリーから探す",
      active: false,
      active2: false,
      active3: false,
      items: items,

    }
  },

  methods: {
    mouseOver: function() {
      this.active = true;
    },
    mouseLeave: function() {
      this.active = false;
    },
    genreOver: function() {
      this.active2 = true;
    },
    itemOver: function() {
      this.active3 = true;
    },
    itemLeave: function() {
      this.active3 = false;
    }

  }

}

</script>
