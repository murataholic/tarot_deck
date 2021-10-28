require 'rails_helper'

RSpec.describe ArticleDeck, type: :model do
  before do
    user = FactoryBot.create(:user)
    @article_deck = FactoryBot.build(:article_deck, user_id: user.id)
  end

  describe '記事の投稿' do
    context '内容に問題がない場合' do
      it 'すべての値が正しく入力されていれば保存できること' do
        expect(@article_deck).to be_valid
      end
    end

    context 'タイトル・ジャンル・テキスト欄に不備がある場合' do
      it 'タイトルが空の場合、保存できない' do
        @article_deck.title = ''
        @article_deck.valid?
        expect(@article_deck.errors.full_messages).to include('タイトルを入力してください')
      end
      it 'タイトルが31文字以上の場合、保存できない' do
        @article_deck.title = 'abcdefghijklmnopqrstuvwxyz12345'
        @article_deck.valid?
        expect(@article_deck.errors.full_messages).to include('タイトルは30文字以内でご記入ください')
      end
      it 'ジャンルが空の場合、保存できない' do
        @article_deck.genre = ''
        @article_deck.valid?
        expect(@article_deck.errors.full_messages).to include('ジャンルを選択してください')
      end
      it 'ジャンルが初期値(--ジャンルを選択してください--)の場合、保存できない' do
        @article_deck.genre = '0'
        @article_deck.valid?
        expect(@article_deck.errors.full_messages).to include('ジャンルを選択してください')
      end
      it 'テキストが空の場合、保存できない' do
        @article_deck.text = ''
        @article_deck.valid?
        expect(@article_deck.errors.full_messages).to include('テキストを入力してください')
      end
      it 'テキストが2001文字以上の場合、保存できない' do
        @article_deck.text = Faker::Number.number(digits: 2001)
        @article_deck.valid?
        expect(@article_deck.errors.full_messages).to include('テキストは2000文字以内でご記入ください')
      end
    end
    context 'デッキ欄に不備がある場合' do
      context '空欄・初期値に関する不備' do
        it 'arc1が空の場合、保存できない' do
          @article_deck.arc1 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include("Arc1を選択してください")
        end
        it 'arc1が初期値(「アルカナを選択」)の場合、保存できない' do
          @article_deck.arc1 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Arc1を選択してください')
        end
        it 'mons1が空の場合、保存できない' do
          @article_deck.mons1 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons1を選択してください')
        end
        it 'mons1が初期値(「モンスター名」)の場合、保存できない' do
          @article_deck.mons1 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons1を選択してください')
        end
        it 'arc2が空の場合、保存できない' do
          @article_deck.arc2 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Arc2を選択してください')
        end
        it 'arc2が初期値(「アルカナを選択」)の場合、保存できない' do
          @article_deck.arc2 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Arc2を選択してください')
        end
        it 'mons2が空の場合、保存できない' do
          @article_deck.mons2 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons2を選択してください')
        end
        it 'mons2が初期値(「モンスター名」)の場合、保存できない' do
          @article_deck.mons2 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons2を選択してください')
        end
        it 'arc3が空の場合、保存できない' do
          @article_deck.arc3 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Arc3を選択してください')
        end
        it 'arc3が初期値(「アルカナを選択」)の場合、保存できない' do
          @article_deck.arc3 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Arc3を選択してください')
        end
        it 'mons3が空の場合、保存できない' do
          @article_deck.mons3 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons3を選択してください')
        end
        it 'mons3が初期値(「モンスター名」)の場合、保存できない' do
          @article_deck.mons3 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons3を選択してください')
        end
        it 'arc4が空の場合、保存できない' do
          @article_deck.arc4 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Arc4を選択してください')
        end
        it 'arc4が初期値(「アルカナを選択」)の場合、保存できない' do
          @article_deck.arc4 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Arc4を選択してください')
        end
        it 'mons4が空の場合、保存できない' do
          @article_deck.mons4 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons4を選択してください')
        end
        it 'mons4が初期値(「モンスター名」)の場合、保存できない' do
          @article_deck.mons4 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons4を選択してください')
        end
        it 'arc5が空の場合、保存できない' do
          @article_deck.arc5 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Arc5を選択してください')
        end
        it 'arc5が初期値(「アルカナを選択」)の場合、保存できない' do
          @article_deck.arc5 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Arc5を選択してください')
        end
        it 'mons5が空の場合、保存できない' do
          @article_deck.mons5 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons5を選択してください')
        end
        it 'mons5が初期値(「モンスター名」)の場合、保存できない' do
          @article_deck.mons5 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons5を選択してください')
        end
        it 'arc6が空の場合、保存できない' do
          @article_deck.arc6 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include("Arc6を選択してください")
        end
        it 'arc6が初期値(「アルカナを選択」)の場合、保存できない' do
          @article_deck.arc6 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Arc6を選択してください')
        end
        it 'mons6が空の場合、保存できない' do
          @article_deck.mons6 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons6を選択してください')
        end
        it 'mons6が初期値(「モンスター名」)の場合、保存できない' do
          @article_deck.mons6 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons6を選択してください')
        end
        it 'arc7が空の場合、保存できない' do
          @article_deck.arc7 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include("Arc7を選択してください")
        end
        it 'arc7が初期値(「アルカナを選択」)の場合、保存できない' do
          @article_deck.arc7 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Arc7を選択してください')
        end
        it 'mons7が空の場合、保存できない' do
          @article_deck.mons7 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons7を選択してください')
        end
        it 'mons7が初期値(「モンスター名」)の場合、保存できない' do
          @article_deck.mons7 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons7を選択してください')
        end
        it 'arc8が空の場合、保存できない' do
          @article_deck.arc8 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include("Arc8を選択してください")
        end
        it 'arc8が初期値(「アルカナを選択」)の場合、保存できない' do
          @article_deck.arc8 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Arc8を選択してください')
        end
        it 'mons8が空の場合、保存できない' do
          @article_deck.mons8 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons8を選択してください')
        end
        it 'mons8が初期値(「モンスター名」)の場合、保存できない' do
          @article_deck.mons8 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons8を選択してください')
        end
        it 'arc9が空の場合、保存できない' do
          @article_deck.arc9 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include("Arc9を選択してください")
        end
        it 'arc9が初期値(「アルカナを選択」)の場合、保存できない' do
          @article_deck.arc9 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Arc9を選択してください')
        end
        it 'mons9が空の場合、保存できない' do
          @article_deck.mons9 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons9を選択してください')
        end
        it 'mons9が初期値(「モンスター名」)の場合、保存できない' do
          @article_deck.mons9 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons9を選択してください')
        end
        it 'arc10が空の場合、保存できない' do
          @article_deck.arc10 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include("Arc10を選択してください")
        end
        it 'arc10が初期値(「アルカナを選択」)の場合、保存できない' do
          @article_deck.arc10 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Arc10を選択してください')
        end
        it 'mons10が空の場合、保存できない' do
          @article_deck.mons10 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons10を選択してください')
        end
        it 'mons10が初期値(「モンスター名」)の場合、保存できない' do
          @article_deck.mons10 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons10を選択してください')
        end
        #//
        it 'arc11が空の場合、保存できない' do
          @article_deck.arc11 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include("Arc11を選択してください")
        end
        it 'arc11が初期値(「アルカナを選択」)の場合、保存できない' do
          @article_deck.arc11 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Arc11を選択してください')
        end
        it 'mons11が空の場合、保存できない' do
          @article_deck.mons11 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons11を選択してください')
        end
        it 'mons11が初期値(「モンスター名」)の場合、保存できない' do
          @article_deck.mons11 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons11を選択してください')
        end
        it 'arc12が空の場合、保存できない' do
          @article_deck.arc12 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Arc12を選択してください')
        end
        it 'arc12が初期値(「アルカナを選択」)の場合、保存できない' do
          @article_deck.arc12 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Arc12を選択してください')
        end
        it 'mons12が空の場合、保存できない' do
          @article_deck.mons12 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons12を選択してください')
        end
        it 'mons12が初期値(「モンスター名」)の場合、保存できない' do
          @article_deck.mons12 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons12を選択してください')
        end
        it 'arc13が空の場合、保存できない' do
          @article_deck.arc13 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Arc13を選択してください')
        end
        it 'arc13が初期値(「アルカナを選択」)の場合、保存できない' do
          @article_deck.arc13 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Arc13を選択してください')
        end
        it 'mons13が空の場合、保存できない' do
          @article_deck.mons13 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons13を選択してください')
        end
        it 'mons13が初期値(「モンスター名」)の場合、保存できない' do
          @article_deck.mons13 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons13を選択してください')
        end
        it 'arc14が空の場合、保存できない' do
          @article_deck.arc14 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Arc14を選択してください')
        end
        it 'arc14が初期値(「アルカナを選択」)の場合、保存できない' do
          @article_deck.arc14 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Arc14を選択してください')
        end
        it 'mons14が空の場合、保存できない' do
          @article_deck.mons14 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons14を選択してください')
        end
        it 'mons14が初期値(「モンスター名」)の場合、保存できない' do
          @article_deck.mons14 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons14を選択してください')
        end
        it 'arc15が空の場合、保存できない' do
          @article_deck.arc15 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Arc15を選択してください')
        end
        it 'arc15が初期値(「アルカナを選択」)の場合、保存できない' do
          @article_deck.arc15 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Arc15を選択してください')
        end
        it 'mons15が空の場合、保存できない' do
          @article_deck.mons15 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons15を選択してください')
        end
        it 'mons15が初期値(「モンスター名」)の場合、保存できない' do
          @article_deck.mons15 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons15を選択してください')
        end
        it 'arc16が空の場合、保存できない' do
          @article_deck.arc16 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include("Arc16を選択してください")
        end
        it 'arc16が初期値(「アルカナを選択」)の場合、保存できない' do
          @article_deck.arc16 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Arc16を選択してください')
        end
        it 'mons16が空の場合、保存できない' do
          @article_deck.mons16 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons16を選択してください')
        end
        it 'mons16が初期値(「モンスター名」)の場合、保存できない' do
          @article_deck.mons16 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons16を選択してください')
        end
        it 'arc17が空の場合、保存できない' do
          @article_deck.arc17 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include("Arc17を選択してください")
        end
        it 'arc17が初期値(「アルカナを選択」)の場合、保存できない' do
          @article_deck.arc17 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Arc17を選択してください')
        end
        it 'mons17が空の場合、保存できない' do
          @article_deck.mons17 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons17を選択してください')
        end
        it 'mons17が初期値(「モンスター名」)の場合、保存できない' do
          @article_deck.mons17 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons17を選択してください')
        end
        it 'arc18が空の場合、保存できない' do
          @article_deck.arc18 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include("Arc18を選択してください")
        end
        it 'arc18が初期値(「アルカナを選択」)の場合、保存できない' do
          @article_deck.arc18 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Arc18を選択してください')
        end
        it 'mons18が空の場合、保存できない' do
          @article_deck.mons18 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons18を選択してください')
        end
        it 'mons18が初期値(「モンスター名」)の場合、保存できない' do
          @article_deck.mons18 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons18を選択してください')
        end
        it 'arc19が空の場合、保存できない' do
          @article_deck.arc19 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include("Arc19を選択してください")
        end
        it 'arc19が初期値(「アルカナを選択」)の場合、保存できない' do
          @article_deck.arc19 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Arc19を選択してください')
        end
        it 'mons19が空の場合、保存できない' do
          @article_deck.mons19 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons19を選択してください')
        end
        it 'mons19が初期値(「モンスター名」)の場合、保存できない' do
          @article_deck.mons19 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons19を選択してください')
        end
        it 'arc20が空の場合、保存できない' do
          @article_deck.arc20 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include("Arc20を選択してください")
        end
        it 'arc20が初期値(「アルカナを選択」)の場合、保存できない' do
          @article_deck.arc20 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Arc20を選択してください')
        end
        it 'mons20が空の場合、保存できない' do
          @article_deck.mons20 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons20を選択してください')
        end
        it 'mons20が初期値(「モンスター名」)の場合、保存できない' do
          @article_deck.mons20 = '0'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Mons20を選択してください')
        end
      end
      context '制限枚数に関する不備' do
        it 'モンスター名にランクが指定されている(id値が1, 12, 21, 42, 63)場合、保存できない' do
          id_check = ["1", "12", "21", "42", "63"]
          id_check.each do |n|
            @article_deck.mons1 = n
            @article_deck.valid?
            expect(@article_deck.errors.full_messages).to include('登録できません。モンスターを修正してください')
          end
        end
        it '制限枚数1枚までのモンスター(id値が2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 20)が2枚以上含まれる場合、保存できない' do
          id_check = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "20"]
          id_check.each do |n|
            @article_deck.mons1 = n
            @article_deck.mons2 = n
            @article_deck.valid?
            expect(@article_deck.errors.full_messages).to include('登録できません。モンスターを修正してください')
          end
        end
        it '制限枚数2枚までのモンスター(id値が13, 14, 15, 16, 17, 18, 19, 35, 36, 53, 62, 64)が3枚以上含まれる場合、保存できない' do
          id_check = ["13", "14", "15", "16", "17", "18", "19", "35", "36", "53", "62", "64"]
          id_check.each do |n|
            @article_deck.mons1 = n
            @article_deck.mons2 = n
            @article_deck.mons3 = n
            @article_deck.valid?
            expect(@article_deck.errors.full_messages).to include('登録できません。モンスターを修正してください')
          end
        end
        it '制限枚数5枚までのモンスター(id値が上記以外)が6枚以上含まれる場合' do
          id_check = [
            "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "37", "38", "39", "40", "41",
            "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "54", "55", "56", "57", "58", "59", "60", "61"
          ]
          id_check.each do |n|
            @article_deck.mons1 = n
            @article_deck.mons2 = n
            @article_deck.mons3 = n
            @article_deck.mons4 = n
            @article_deck.mons5 = n
            @article_deck.mons6 = n
            @article_deck.valid?
            expect(@article_deck.errors.full_messages).to include('登録できません。モンスターを修正してください')
          end
        end
        it '制限枚数2枚までのアルカナ(id値が1, 2, 3, 5, 8, 11, 15, 16, 17, 21)が3枚以上含まれる場合' do
          id_check = ["1", "2", "3", "5", "8", "11", "15", "16", "17", "21"]
          id_check.each do |n|
            @article_deck.arc1 = n
            @article_deck.arc2 = n
            @article_deck.arc3 = n
            @article_deck.valid?
            expect(@article_deck.errors.full_messages).to include('登録できません。アルカナを修正してください')
          end
        end
        it '制限枚数4枚までのアルカナ(id値が上記以外)が5枚以上含まれる場合' do
          id_check = ["4", "6", "7", "9", "10", "12", "13", "14", "18", "19", "20", "22"]
          id_check.each do |n|
            @article_deck.arc1 = n
            @article_deck.arc2 = n
            @article_deck.arc3 = n
            @article_deck.arc4 = n
            @article_deck.arc5 = n
            @article_deck.valid?
            expect(@article_deck.errors.full_messages).to include('登録できません。アルカナを修正してください')
          end
        end
      end
    end
  end
end