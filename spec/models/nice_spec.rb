require 'rails_helper'

RSpec.describe Nice, type: :model do
  before do
    user = FactoryBot.create(:user)
    article = FactoryBot.create(:article)
    @nice = FactoryBot.build(:nice, user_id: user.id, article_id: article.id)
  end

  describe 'いいね！登録' do
    it 'user_idとarticle_idが存在すれば、いいね！ができる' do
      expect(@nice).to be_valid
    end
    it 'userが紐づいていなければ、いいね！ができない' do
      @nice.user = nil
      @nice.valid?
      expect(@nice.errors.full_messages).to include('ユーザーを入力してください')
    end
    it 'articleが紐づいていなければ、いいね！ができない' do
      binding.pry
      @nice.article = nil
      @nice.valid?
      expect(@nice.errors.full_messages).to include('記事を入力してください')
    end
  end
end
