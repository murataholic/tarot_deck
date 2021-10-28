require 'rails_helper'

RSpec.describe ArticleDeck, type: :model do
  describe '記事の投稿' do
    before do
      user = FactoryBot.create(:user)
      @article_deck = FactoryBot.build(:article_deck, user_id: user.id)
    end
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
        @article_deck.genre = 0
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
        it '' do
        end
        it 'arc1が空の場合、保存できない' do
          @article_deck.arc1 = ''
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('Arc1を選択してください')
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
        it 'mons1がモンスター名以外(id値が1, 12, 21, 42, 63)の場合、保存できない' do
          @article_deck.mons1 = '1'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('登録できません。モンスターを修正してください')
        end
      end
      context '制限枚数に関する不備' do
        it '制限枚数1枚までのモンスター(id値が2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 20)が2枚以上含まれる場合、保存できない' do
          @article_deck.mons1 = '2'
          @article_deck.mons2 = '2'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('登録できません。モンスターを修正してください')
        end
        it '制限枚数2枚までのモンスター(id値が13, 14, 15, 16, 17, 18, 19, 35, 36, 53, 62, 64)が3枚以上含まれる場合、保存できない' do
          @article_deck.mons1 = '13'
          @article_deck.mons2 = '13'
          @article_deck.mons3 = '13'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('登録できません。モンスターを修正してください')
        end
        it '制限枚数5枚までのモンスター(id値が上記以外)が6枚以上含まれる場合' do
          @article_deck.mons1 = '22'
          @article_deck.mons2 = '22'
          @article_deck.mons3 = '22'
          @article_deck.mons4 = '22'
          @article_deck.mons5 = '22'
          @article_deck.mons6 = '22'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('登録できません。モンスターを修正してください')
        end
        it '制限枚数2枚までのアルカナ(id値が1, 2, 3, 5, 8, 11, 15, 16, 17, 21)が3枚以上含まれる場合' do
          @article_deck.arc1 = '1'
          @article_deck.arc2 = '1'
          @article_deck.arc3 = '1'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('登録できません。アルカナを修正してください')
        end
        it '制限枚数4枚までのアルカナ(id値が上記以外)が5枚以上含まれる場合' do
          @article_deck.arc1 = '4'
          @article_deck.arc2 = '4'
          @article_deck.arc3 = '4'
          @article_deck.arc4 = '4'
          @article_deck.arc5 = '4'
          @article_deck.valid?
          expect(@article_deck.errors.full_messages).to include('登録できません。アルカナを修正してください')
        end
      end
    end
  end
end
