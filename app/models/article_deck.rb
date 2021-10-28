class ArticleDeck
  include ActiveModel::Model
  attr_accessor :title, :text, :article_id, :user_id, :genre,
                :mons1, :mons2, :mons3, :mons4, :mons5, :mons6, :mons7, :mons8, :mons9, :mons10,
                :mons11, :mons12, :mons13, :mons14, :mons15, :mons16, :mons17, :mons18, :mons19, :mons20,
                :arc1, :arc2, :arc3, :arc4, :arc5, :arc6, :arc7, :arc8, :arc9, :arc10,
                :arc11, :arc12, :arc13, :arc14, :arc15, :arc16, :arc17, :arc18, :arc19, :arc20

  with_options presence: true do
    validates :user_id, :title, :text

    with_options numericality: { other_than: 0, message: 'を選択してください' } do
      validates :genre, :arc1, :arc2, :arc3, :arc4, :arc5, :arc6, :arc7, :arc8, :arc9, :arc10,
                :arc11, :arc12, :arc13, :arc14, :arc15, :arc16, :arc17, :arc18, :arc19, :arc20
    end

    with_options numericality: { other_than: 0, message: 'を選択してください' } do
      validates :mons1, :mons2, :mons3, :mons4, :mons5, :mons6, :mons7, :mons8, :mons9, :mons10,
                :mons11, :mons12, :mons13, :mons14, :mons15, :mons16, :mons17, :mons18, :mons19, :mons20
    end
  end

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

  validate :title_length_check

  def title_length_check
    errors.add(:title, 'は30文字以内でご記入ください') if title.to_s.length > 30
  end

  validate :text_length_check

  def text_length_check
    errors.add(:text, 'は2000文字以内でご記入ください') if text.to_s.length > 2000
  end

  validate :arcana_count_check

  def arcana_count_check
    arcanum_id_and_number = {}
    deck_arcanum_ids = [arc1, arc2, arc3, arc4, arc5, arc6, arc7, arc8, arc9, arc10,
                        arc11, arc12, arc13, arc14, arc15, arc16, arc17, arc18, arc19, arc20]
    calc_a(deck_arcanum_ids, arcanum_id_and_number)
  end

  def calc_a(deck_arcanum_ids, arcanum_id_and_number)
    deck_arcanum_ids.each do |n|
      arcanum_id_and_number[n] = deck_arcanum_ids.count(n)
    end

    arcanum_id_and_number.each do |k, v|
      case k
      when '1', '2', '3', '5', '8', '11', '15', '16', '17', '21'
        return arcanum_error if v >= 3
      else
        return arcanum_error if v >= 5
      end
    end
  end

  validate :monsters_count_check

  def monsters_count_check
    monster_id_and_number = {}
    deck_monster_ids = [mons1, mons2, mons3, mons4, mons5, mons6, mons7, mons8, mons9, mons10,
                        mons11, mons12, mons13, mons14, mons15, mons16, mons17, mons18, mons19, mons20]
    calc_m(deck_monster_ids, monster_id_and_number)
  end

  def calc_m(deck_monster_ids, monster_id_and_number)
    deck_monster_ids.each do |n|
      monster_id_and_number[n] = deck_monster_ids.count(n)
    end

    monster_id_and_number.each do |k, v|
      case k
      when '1', '12', '21', '42', '63'
        return monster_error if v >= 1
      when '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '20'
        return monster_error if v >= 2
      when '13', '14', '15', '16', '17', '18', '19', '35', '36', '53', '62', '64'
        return monster_error if v >= 3
      else
        return monster_error if v >= 6
      end
    end
  end

  def arcanum_error
    errors[:base] << '登録できません。アルカナを修正してください'
  end

  def monster_error
    errors[:base] << '登録できません。モンスターを修正してください'
  end
end
