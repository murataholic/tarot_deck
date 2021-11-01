class Article < ApplicationRecord
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

  with_options presence: true do
    validates :user_id, :title, :text

    with_options numericality: { other_than: 0, message: 'を選択してください' } do
      validates :genre_id, :arc1_id, :arc2_id, :arc3_id, :arc4_id, :arc5_id, :arc6_id,
                :arc7_id, :arc8_id, :arc9_id, :arc10_id, :arc11_id, :arc12_id, :arc13_id,
                :arc14_id, :arc15_id, :arc16_id, :arc17_id, :arc18_id, :arc19_id, :arc20_id,
                :mons1_id, :mons2_id, :mons3_id, :mons4_id, :mons5_id, :mons6_id, :mons7_id,
                :mons8_id, :mons9_id, :mons10_id, :mons11_id, :mons12_id, :mons13_id, :mons14_id,
                :mons15_id, :mons16_id, :mons17_id, :mons18_id, :mons19_id, :mons20_id
    end
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
    deck_arcanum_ids = [
      arc1_id, arc2_id, arc3_id, arc4_id, arc5_id,
      arc6_id, arc7_id, arc8_id, arc9_id, arc10_id,
      arc11_id, arc12_id, arc13_id, arc14_id, arc15_id,
      arc16_id, arc17_id, arc18_id, arc19_id, arc20_id
    ]
    calc_a(deck_arcanum_ids, arcanum_id_and_number)
  end

  def calc_a(deck_arcanum_ids, arcanum_id_and_number)
    deck_arcanum_ids.each do |n|
      arcanum_id_and_number[n] = deck_arcanum_ids.count(n)
    end
    arcanum_id_and_number.each do |k, v|
      case k
      when 1, 2, 3, 5, 8, 11, 15, 16, 17, 21
        return arcanum_error if v >= 3
      else
        return arcanum_error if v >= 5
      end
    end
  end

  validate :monsters_count_check

  def monsters_count_check
    monster_id_and_number = {}
    deck_monster_ids = [
      mons1_id, mons2_id, mons3_id, mons4_id, mons5_id,
      mons6_id, mons7_id, mons8_id, mons9_id, mons10_id,
      mons11_id, mons12_id, mons13_id, mons14_id, mons15_id,
      mons16_id, mons17_id, mons18_id, mons19_id, mons20_id
    ]
    calc_m(deck_monster_ids, monster_id_and_number)
  end

  def calc_m(deck_monster_ids, monster_id_and_number)
    deck_monster_ids.each do |n|
      monster_id_and_number[n] = deck_monster_ids.count(n)
    end

    monster_id_and_number.each do |k, v|
      case k
      when 1, 12, 21, 42, 63
        return monster_error if v >= 1
      when 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 20
        return monster_error if v >= 2
      when 13, 14, 15, 16, 17, 18, 19, 35, 36, 53, 62, 64
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
