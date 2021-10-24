class ArticleDeck
  include ActiveModel::Model
  attr_accessor :title, :text, :mons1, :mons2, :mons3, :mons4, :mons5,
                :arc1, :arc2, :arc3, :arc4, :arc5, :article_id, :genre

  with_options numericality: {other_than: 0, message: "can't be blank" } do
    validates :arc1, :arc2, :arc3, :arc4, :arc5
  end
  
  with_options numericality: { 
    other_than: 0, other_than: 1, other_than: 21, other_than: 42, other_than: 63,
    message: "can't be blank" } do
    validates :mons1, :mons2, :mons3, :mons4, :mons5
  end

  validates :title, :text, presence: true
  validates :genre, numericality: { other_than: 0, message: "can't be blank" } 

  def save
    article = Article.create(title: title, text: text, genre_id: genre)
    Deck.create(mons1: mons1, mons2: mons2, mons3: mons3, mons4: mons4, mons5: mons5,
                arc1: arc1, arc2: arc2, arc3: arc3, arc4: arc4, arc5: arc5, article_id: article.id)
  end

  validate :text_length_check
 
  def text_length_check
    text_validation = text.gsub(/\r\n/,"1")
    if text_validation.length > 3000
      errors.add(:text, "は3000字以内で入力してください。")
    end
  end

  validate :arcana_check

  def arcana_check
    count_arcana = {}
    arcana = [ arc1, arc2, arc3, arc4, arc5 ]
    return calc_arcana(arcana, count_arcana)
  end

  def calc_arcana(arcana, count_arcana)
    arcana.each do |n|
      count_arcana[n] = arcana.count(n)
    end

    count_arcana.each do |k, v|
      case k
      when "1", "2", "3", "5", "8", "11", "15", "16", "17", "21" 
        if v > 2
          return error_message
        end
      else
        if v > 4
          return error_message
        end
      end
    end
  end

  validate :monster_check

  def monster_check
    count_monsters = {}
    monsters = [ mons1, mons2, mons3, mons4, mons5 ]
    return calc_monsters(monsters, count_monsters)
  end

  def calc_monsters(monsters, count_monsters)
    monsters.each do |n|
      count_monsters[n] = monsters.count(n)
    end

    count_monsters.each do |k, v|
      case k
      when "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "20" 
        if v > 1
          return error_message
        end
      when "13", "14", "15", "16", "17", "18", "19", "34", "35", "53", "62", "64"
        if v > 2
          return error_message
        end
      else
        if n > 5
          return error_message
        end
      end
    end
  end

  def error_message
    errors[:base] << "エラー：登録できません。デッキを修正してください。"
  end

end