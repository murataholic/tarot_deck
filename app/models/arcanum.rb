class Arcanum < ActiveHash::Base
self.data = [
  {id: 0, name: 'アルカナを選択'},
  {id: 1, name: '正義'},
  {id: 2, name: '戦車'},
  {id: 3, name: '死神'},
  {id: 4, name: '塔'},
  {id: 5, name: '罪人'},
  {id: 6, name: '隠者'},
  {id: 7, name: '力'},
  {id: 8, name: '魔術師'},
  {id: 9, name: '恋人'},
  {id: 10, name: '悪魔'},
  {id: 11, name: '皇帝'},
  {id: 12, name: '世界'},
  {id: 13, name: '教皇'},
  {id: 14, name: '女教皇'},
  {id: 15, name: '節制'},
  {id: 16, name: '太陽'},
  {id: 17, name: '審判'},
  {id: 18, name: '運命'},
  {id: 19, name: '月'},
  {id: 20, name: '星'},
  {id: 21, name: '愚者'},
  {id: 22, name: '女帝'}
]

include ActiveHash::Associations
has_many :decks

end