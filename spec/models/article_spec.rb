require 'rails_helper'

RSpec.describe Article, type: :model do
  before do
    user = FactoryBot.create(:user)
    @article = FactoryBot.build(:article, user_id: user.id)
  end

  describe '記事の投稿' do
    context '内容に問題がない場合' do
      it 'すべての値が正しく入力されていれば保存できること' do
        expect(@article).to be_valid
      end
    end

    context 'タイトル・ジャンル・テキスト欄に不備がある場合' do
      it 'タイトルが空の場合、保存できない' do
        @article.title = ''
        @article.valid?
        expect(@article.errors.full_messages).to include('タイトルを入力してください')
      end
      it 'タイトルが31文字以上の場合、保存できない' do
        @article.title = 'abcdefghijklmnopqrstuvwxyz12345'
        @article.valid?
        expect(@article.errors.full_messages).to include('タイトルは30文字以内でご記入ください')
      end
      it 'ジャンルが空の場合、保存できない' do
        @article.genre_id = ''
        @article.valid?
        expect(@article.errors.full_messages).to include('ジャンルを選択してください')
      end
      it 'ジャンルが初期値(--ジャンルを選択してください--)の場合、保存できない' do
        @article.genre_id = '0'
        @article.valid?
        expect(@article.errors.full_messages).to include('ジャンルを選択してください')
      end
      it 'テキストが空の場合、保存できない' do
        @article.text = ''
        @article.valid?
        expect(@article.errors.full_messages).to include('テキストを入力してください')
      end
      it 'テキストが2001文字以上の場合、保存できない' do
        @article.text = Faker::Lorem.characters(number: 2001)
        @article.valid?
        expect(@article.errors.full_messages).to include('テキストは2000文字以内でご記入ください')
      end
    end

    context 'デッキ欄に不備がある場合' do
      context '空欄・初期値に関する不備' do
        it 'arc1_idが空の場合、保存できない' do
          @article.arc1_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('1枚目のアルカナを選択してください')
        end
        it 'arc1_idが初期値(「アルカナを選択」)の場合、保存できない' do
          @article.arc1_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('1枚目のアルカナを選択してください')
        end
        it 'mons1_idが空の場合、保存できない' do
          @article.mons1_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('1枚目のモンスター名を選択してください')
        end
        it 'mons1_idが初期値(「モンスター名」)の場合、保存できない' do
          @article.mons1_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('1枚目のモンスター名を選択してください')
        end
        it 'arc2_idが空の場合、保存できない' do
          @article.arc2_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('2枚目のアルカナを選択してください')
        end
        it 'arc2_idが初期値(「アルカナを選択」)の場合、保存できない' do
          @article.arc2_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('2枚目のアルカナを選択してください')
        end
        it 'mons2_idが空の場合、保存できない' do
          @article.mons2_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('2枚目のモンスター名を選択してください')
        end
        it 'mons2_idが初期値(「モンスター名」)の場合、保存できない' do
          @article.mons2_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('2枚目のモンスター名を選択してください')
        end
        it 'arc3_idが空の場合、保存できない' do
          @article.arc3_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('3枚目のアルカナを選択してください')
        end
        it 'arc3_idが初期値(「アルカナを選択」)の場合、保存できない' do
          @article.arc3_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('3枚目のアルカナを選択してください')
        end
        it 'mons3_idが空の場合、保存できない' do
          @article.mons3_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('3枚目のモンスター名を選択してください')
        end
        it 'mons3_idが初期値(「モンスター名」)の場合、保存できない' do
          @article.mons3_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('3枚目のモンスター名を選択してください')
        end
        it 'arc4_idが空の場合、保存できない' do
          @article.arc4_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('4枚目のアルカナを選択してください')
        end
        it 'arc4_idが初期値(「アルカナを選択」)の場合、保存できない' do
          @article.arc4_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('4枚目のアルカナを選択してください')
        end
        it 'mons4_idが空の場合、保存できない' do
          @article.mons4_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('4枚目のモンスター名を選択してください')
        end
        it 'mons4_idが初期値(「モンスター名」)の場合、保存できない' do
          @article.mons4_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('4枚目のモンスター名を選択してください')
        end
        it 'arc5_idが空の場合、保存できない' do
          @article.arc5_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('5枚目のアルカナを選択してください')
        end
        it 'arc5_idが初期値(「アルカナを選択」)の場合、保存できない' do
          @article.arc5_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('5枚目のアルカナを選択してください')
        end
        it 'mons5_idが空の場合、保存できない' do
          @article.mons5_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('5枚目のモンスター名を選択してください')
        end
        it 'mons5_idが初期値(「モンスター名」)の場合、保存できない' do
          @article.mons5_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('5枚目のモンスター名を選択してください')
        end
        it 'arc6_idが空の場合、保存できない' do
          @article.arc6_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('6枚目のアルカナを選択してください')
        end
        it 'arc6_idが初期値(「アルカナを選択」)の場合、保存できない' do
          @article.arc6_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('6枚目のアルカナを選択してください')
        end
        it 'mons6_idが空の場合、保存できない' do
          @article.mons6_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('6枚目のモンスター名を選択してください')
        end
        it 'mons6_idが初期値(「モンスター名」)の場合、保存できない' do
          @article.mons6_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('6枚目のモンスター名を選択してください')
        end
        it 'arc7_idが空の場合、保存できない' do
          @article.arc7_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('7枚目のアルカナを選択してください')
        end
        it 'arc7_idが初期値(「アルカナを選択」)の場合、保存できない' do
          @article.arc7_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('7枚目のアルカナを選択してください')
        end
        it 'mons7_idが空の場合、保存できない' do
          @article.mons7_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('7枚目のモンスター名を選択してください')
        end
        it 'mons7_idが初期値(「モンスター名」)の場合、保存できない' do
          @article.mons7_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('7枚目のモンスター名を選択してください')
        end
        it 'arc8_idが空の場合、保存できない' do
          @article.arc8_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('8枚目のアルカナを選択してください')
        end
        it 'arc8_idが初期値(「アルカナを選択」)の場合、保存できない' do
          @article.arc8_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('8枚目のアルカナを選択してください')
        end
        it 'mons8_idが空の場合、保存できない' do
          @article.mons8_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('8枚目のモンスター名を選択してください')
        end
        it 'mons8_idが初期値(「モンスター名」)の場合、保存できない' do
          @article.mons8_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('8枚目のモンスター名を選択してください')
        end
        it 'arc9_idが空の場合、保存できない' do
          @article.arc9_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('9枚目のアルカナを選択してください')
        end
        it 'arc9_idが初期値(「アルカナを選択」)の場合、保存できない' do
          @article.arc9_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('9枚目のアルカナを選択してください')
        end
        it 'mons9_idが空の場合、保存できない' do
          @article.mons9_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('9枚目のモンスター名を選択してください')
        end
        it 'mons9_idが初期値(「モンスター名」)の場合、保存できない' do
          @article.mons9_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('9枚目のモンスター名を選択してください')
        end
        it 'arc10_idが空の場合、保存できない' do
          @article.arc10_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('10枚目のアルカナを選択してください')
        end
        it 'arc10_idが初期値(「アルカナを選択」)の場合、保存できない' do
          @article.arc10_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('10枚目のアルカナを選択してください')
        end
        it 'mons10_idが空の場合、保存できない' do
          @article.mons10_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('10枚目のモンスター名を選択してください')
        end
        it 'mons10_idが初期値(「モンスター名」)の場合、保存できない' do
          @article.mons10_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('10枚目のモンスター名を選択してください')
        end

        it 'arc11_idが空の場合、保存できない' do
          @article.arc11_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('11枚目のアルカナを選択してください')
        end
        it 'arc11_idが初期値(「アルカナを選択」)の場合、保存できない' do
          @article.arc11_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('11枚目のアルカナを選択してください')
        end
        it 'mons11_idが空の場合、保存できない' do
          @article.mons11_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('11枚目のモンスター名を選択してください')
        end
        it 'mons11_idが初期値(「モンスター名」)の場合、保存できない' do
          @article.mons11_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('11枚目のモンスター名を選択してください')
        end
        it 'arc12_idが空の場合、保存できない' do
          @article.arc12_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('12枚目のアルカナを選択してください')
        end
        it 'arc12_idが初期値(「アルカナを選択」)の場合、保存できない' do
          @article.arc12_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('12枚目のアルカナを選択してください')
        end
        it 'mons12_idが空の場合、保存できない' do
          @article.mons12_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('12枚目のモンスター名を選択してください')
        end
        it 'mons12_idが初期値(「モンスター名」)の場合、保存できない' do
          @article.mons12_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('12枚目のモンスター名を選択してください')
        end
        it 'arc13_idが空の場合、保存できない' do
          @article.arc13_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('13枚目のアルカナを選択してください')
        end
        it 'arc13_idが初期値(「アルカナを選択」)の場合、保存できない' do
          @article.arc13_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('13枚目のアルカナを選択してください')
        end
        it 'mons13_idが空の場合、保存できない' do
          @article.mons13_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('13枚目のモンスター名を選択してください')
        end
        it 'mons13_idが初期値(「モンスター名」)の場合、保存できない' do
          @article.mons13_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('13枚目のモンスター名を選択してください')
        end
        it 'arc14_idが空の場合、保存できない' do
          @article.arc14_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('14枚目のアルカナを選択してください')
        end
        it 'arc14_idが初期値(「アルカナを選択」)の場合、保存できない' do
          @article.arc14_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('14枚目のアルカナを選択してください')
        end
        it 'mons14_idが空の場合、保存できない' do
          @article.mons14_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('14枚目のモンスター名を選択してください')
        end
        it 'mons14_idが初期値(「モンスター名」)の場合、保存できない' do
          @article.mons14_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('14枚目のモンスター名を選択してください')
        end
        it 'arc15_idが空の場合、保存できない' do
          @article.arc15_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('15枚目のアルカナを選択してください')
        end
        it 'arc15_idが初期値(「アルカナを選択」)の場合、保存できない' do
          @article.arc15_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('15枚目のアルカナを選択してください')
        end
        it 'mons15_idが空の場合、保存できない' do
          @article.mons15_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('15枚目のモンスター名を選択してください')
        end
        it 'mons15_idが初期値(「モンスター名」)の場合、保存できない' do
          @article.mons15_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('15枚目のモンスター名を選択してください')
        end
        it 'arc16_idが空の場合、保存できない' do
          @article.arc16_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('16枚目のアルカナを選択してください')
        end
        it 'arc16_idが初期値(「アルカナを選択」)の場合、保存できない' do
          @article.arc16_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('16枚目のアルカナを選択してください')
        end
        it 'mons16_idが空の場合、保存できない' do
          @article.mons16_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('16枚目のモンスター名を選択してください')
        end
        it 'mons16_idが初期値(「モンスター名」)の場合、保存できない' do
          @article.mons16_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('16枚目のモンスター名を選択してください')
        end
        it 'arc17_idが空の場合、保存できない' do
          @article.arc17_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('17枚目のアルカナを選択してください')
        end
        it 'arc17_idが初期値(「アルカナを選択」)の場合、保存できない' do
          @article.arc17_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('17枚目のアルカナを選択してください')
        end
        it 'mons17_idが空の場合、保存できない' do
          @article.mons17_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('17枚目のモンスター名を選択してください')
        end
        it 'mons17_idが初期値(「モンスター名」)の場合、保存できない' do
          @article.mons17_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('17枚目のモンスター名を選択してください')
        end
        it 'arc18_idが空の場合、保存できない' do
          @article.arc18_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('18枚目のアルカナを選択してください')
        end
        it 'arc18_idが初期値(「アルカナを選択」)の場合、保存できない' do
          @article.arc18_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('18枚目のアルカナを選択してください')
        end
        it 'mons18_idが空の場合、保存できない' do
          @article.mons18_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('18枚目のモンスター名を選択してください')
        end
        it 'mons18_idが初期値(「モンスター名」)の場合、保存できない' do
          @article.mons18_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('18枚目のモンスター名を選択してください')
        end
        it 'arc19_idが空の場合、保存できない' do
          @article.arc19_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('19枚目のアルカナを選択してください')
        end
        it 'arc19_idが初期値(「アルカナを選択」)の場合、保存できない' do
          @article.arc19_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('19枚目のアルカナを選択してください')
        end
        it 'mons19_idが空の場合、保存できない' do
          @article.mons19_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('19枚目のモンスター名を選択してください')
        end
        it 'mons19_idが初期値(「モンスター名」)の場合、保存できない' do
          @article.mons19_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('19枚目のモンスター名を選択してください')
        end
        it 'arc20_idが空の場合、保存できない' do
          @article.arc20_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('20枚目のアルカナを選択してください')
        end
        it 'arc20_idが初期値(「アルカナを選択」)の場合、保存できない' do
          @article.arc20_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('20枚目のアルカナを選択してください')
        end
        it 'mons20_idが空の場合、保存できない' do
          @article.mons20_id = ''
          @article.valid?
          expect(@article.errors.full_messages).to include('20枚目のモンスター名を選択してください')
        end
        it 'mons20_idが初期値(「モンスター名」)の場合、保存できない' do
          @article.mons20_id = '0'
          @article.valid?
          expect(@article.errors.full_messages).to include('20枚目のモンスター名を選択してください')
        end
      end

      context '制限枚数に関する不備' do
        it 'モンスター名にランクが指定されている(id値が1, 12, 21, 42, 63)場合、保存できない' do
          id_check = %w[1 12 21 42 63]
          id_check.each do |n|
            @article.mons1_id = n
            @article.valid?
            expect(@article.errors.full_messages).to include('登録できません。モンスターを修正してください')
          end
        end
        it '制限枚数1枚までのモンスター(id値が2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 20)が2枚以上含まれる場合、保存できない' do
          id_check = %w[2 3 4 5 6 7 8 9 10 11 20]
          id_check.each do |n|
            @article.mons1_id = n
            @article.mons2_id = n
            @article.valid?
            expect(@article.errors.full_messages).to include('登録できません。モンスターを修正してください')
          end
        end
        it '制限枚数2枚までのモンスター(id値が13, 14, 15, 16, 17, 18, 19, 35, 36, 53, 62, 64)が3枚以上含まれる場合、保存できない' do
          id_check = %w[13 14 15 16 17 18 19 35 36 53 62 64]
          id_check.each do |n|
            @article.mons1_id = n
            @article.mons2_id = n
            @article.mons3_id = n
            @article.valid?
            expect(@article.errors.full_messages).to include('登録できません。モンスターを修正してください')
          end
        end
        it '制限枚数5枚までのモンスター(id値が上記以外)が6枚以上含まれる場合' do
          id_check = %w[
            22 23 24 25 26 27 28 29 30 31 32 33 34 37 38 39 40 41
            43 44 45 46 47 48 49 50 51 52 54 55 56 57 58 59 60 61
          ]
          id_check.each do |n|
            @article.mons1_id = n
            @article.mons2_id = n
            @article.mons3_id = n
            @article.mons4_id = n
            @article.mons5_id = n
            @article.mons6_id = n
            @article.valid?
            expect(@article.errors.full_messages).to include('登録できません。モンスターを修正してください')
          end
        end
        it '制限枚数2枚までのアルカナ(id値が1, 2, 3, 5, 8, 11, 15, 16, 17, 21)が3枚以上含まれる場合' do
          id_check = %w[1 2 3 5 8 11 15 16 17 21]
          id_check.each do |n|
            @article.arc1_id = n
            @article.arc2_id = n
            @article.arc3_id = n
            @article.valid?
            expect(@article.errors.full_messages).to include('登録できません。アルカナを修正してください')
          end
        end
        it '制限枚数4枚までのアルカナ(id値が上記以外)が5枚以上含まれる場合' do
          id_check = %w[4 6 7 9 10 12 13 14 18 19 20 22]
          id_check.each do |n|
            @article.arc1_id = n
            @article.arc2_id = n
            @article.arc3_id = n
            @article.arc4_id = n
            @article.arc5_id = n
            @article.valid?
            expect(@article.errors.full_messages).to include('登録できません。アルカナを修正してください')
          end
        end
      end
    end
  end
end
