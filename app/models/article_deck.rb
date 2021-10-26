class ArticleDeck
  include ActiveModel::Model
  attr_accessor :title, :text, :article_id, :user_id, :genre,
                :mons1, :mons2, :mons3, :mons4, :mons5, :mons6, :mons7, :mons8, :mons9, :mons10,
                :mons11, :mons12, :mons13, :mons14, :mons15, :mons16, :mons17, :mons18, :mons19, :mons20,
                :arc1, :arc2, :arc3, :arc4, :arc5, :arc6, :arc7, :arc8, :arc9, :arc10,
                :arc11, :arc12, :arc13, :arc14, :arc15, :arc16, :arc17, :arc18, :arc19, :arc20

  with_options numericality: {other_than: 0, message: "を選択してください。" } do
    validates :genre, :arc1, :arc2, :arc3, :arc4, :arc5, :arc6, :arc7, :arc8, :arc9, :arc10,
              :arc11, :arc12, :arc13, :arc14, :arc15, :arc16, :arc17, :arc18, :arc19, :arc20
  end
  
  with_options numericality: { other_than: 0, message: "を選択してください。" } do
    validates :mons1, :mons2, :mons3, :mons4, :mons5, :mons6, :mons7, :mons8, :mons9, :mons10,
              :mons11, :mons12, :mons13, :mons14, :mons15, :mons16, :mons17, :mons18, :mons19, :mons20
  end

  validates :user_id, :title, :text, presence: true

  def save
    article = Article.create(user_id: user_id, title: title, genre_id: genre, text: text)
    Deck.create(
      mons1: mons1, mons2: mons2, mons3: mons3, mons4: mons4, mons5: mons5,
      mons6: mons6, mons7: mons7, mons8: mons8, mons9: mons9, mons10: mons10,
      mons11: mons11, mons12: mons12, mons13: mons13, mons14: mons14, mons15: mons15,
      mons16: mons16, mons17: mons17, mons18: mons18, mons19: mons19, mons20: mons20,
      arc1: arc1, arc2: arc2, arc3: arc3, arc4: arc4, arc5: arc5,
      arc6: arc6, arc7: arc7, arc8: arc8, arc9: arc9, arc10: arc10,
      arc11: arc11, arc12: arc12, arc13: arc13, arc14: arc14, arc15: arc15,
      arc16: arc16, arc17: arc17, arc18: arc18, arc19: arc19, arc20: arc20,
      article_id: article.id
    )
  end

  validate :text_length_check
 
  def text_length_check
    text_validation = text.gsub(/\r\n/,"1")
    if text_validation.length > 2000
      errors.add(:text, "は2000字以内で入力してください。")
    end
  end

  validate :arcana_check

  def arcana_check
    count_arcana = {}
    arcana = [ arc1, arc2, arc3, arc4, arc5, arc6, arc7, arc8, arc9, arc10,
      arc11, arc12, arc13, arc14, arc15, arc16, arc17, arc18, arc19, arc20 ]
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
          return arcana_error
        end
      else
        if v > 4
          return arcana_error
        end
      end
    end
  end

  validate :monster_check

  def monster_check
    count_monsters = {}
    monsters = [ mons1, mons2, mons3, mons4, mons5, mons6, mons7, mons8, mons9, mons10,
      mons11, mons12, mons13, mons14, mons15, mons16, mons17, mons18, mons19, mons20 ]
    return calc_monsters(monsters, count_monsters)
  end

  def calc_monsters(monsters, count_monsters)
    monsters.each do |n|
      count_monsters[n] = monsters.count(n)
    end

    count_monsters.each do |k, v|
      case k
      when "1", "12", "21", "42", "63"
        if v > 0
          return monsters_error
        end
      when "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "20" 
        if v > 1
          return monsters_error
        end
      when "13", "14", "15", "16", "17", "18", "19", "35", "36", "53", "62", "64"
        if v > 2
          return monsters_error
        end
      else
        if v > 5
          return monsters_error
        end
      end
    end
  end

  def arcana_error
    errors[:base] << "登録できません。アルカナを修正してください。"
  end

  def monsters_error
    errors[:base] << "登録できません。モンスターを修正してください。"
  end

end