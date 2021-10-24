class Genre < ActiveHash::Base
  self.data = [
    { id: 0, name: '--ジャンルを選択してください--' },
    { id: 1, name: 'コインボス' },
    { id: 2, name: '邪神の宮殿' },
    { id: 3, name: '常闇の聖戦' },
    { id: 4, name: '聖守護者の闘戦記' },
    { id: 5, name: 'アストルティア防衛軍' },
    { id: 6, name: '万魔の塔' },
    { id: 7, name: '輝晶獣' },
    { id: 8, name: '源世庫パニガルム' },
    { id: 9, name: 'フィールドの強敵' },
    { id: 10, name: 'フィールド狩り' },
    { id: 11, name: 'コロシアム' },
    { id: 12, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :articles
  
  end