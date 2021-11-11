require 'rails_helper'

RSpec.describe 'Articles', type: :system do
  before do
    @user = FactoryBot.create(:user)
    @article = FactoryBot.build(:article, user_id: @user.id)
    @monster = Monster.all
    @arcanum = Arcanum.all
    @monster_ids = [
      "article_mons1_id", "article_mons2_id", "article_mons3_id", "article_mons4_id", "article_mons5_id",
      "article_mons6_id", "article_mons7_id", "article_mons8_id", "article_mons9_id", "article_mons10_id",
      "article_mons11_id", "article_mons12_id", "article_mons13_id", "article_mons14_id", "article_mons15_id",
      "article_mons16_id", "article_mons17_id", "article_mons18_id", "article_mons19_id", "article_mons20_id"
    ]
    @arcanum_ids = [
      "article_arc1_id", "article_arc2_id", "article_arc3_id", "article_arc4_id", "article_arc5_id",
      "article_arc6_id", "article_arc7_id", "article_arc8_id", "article_arc9_id", "article_arc10_id",
      "article_arc11_id", "article_arc12_id", "article_arc13_id", "article_arc14_id", "article_arc15_id",
      "article_arc16_id", "article_arc17_id", "article_arc18_id", "article_arc19_id", "article_arc20_id"
    ]
  end

  context '記事投稿ができるとき'do
    it 'ログインしたユーザーは新規投稿できる' do
      # ログインする
      visit new_user_session_path
      fill_in 'user_email', with: @user.email
      fill_in 'user_password', with: @user.password
      find('input[name="commit"]').click
      expect(current_path).to eq(root_path)
      # 新規投稿ページへのボタンがあることを確認する
      expect(page).to have_content('投稿する')
      # 投稿ページに移動する
      visit new_article_path
      # フォームに情報を入力する
      fill_in 'article_title', with: @article.title
      select @article.genre.name, from: 'article_genre_id'
      fill_in 'article_text', with: @article.text
      @monster_ids.each_with_index do |id, n|
        select @monster.find(n + 22).name, from: id
      end
      @arcanum_ids.each_with_index do |id, n|
        select @arcanum.find(n + 1).name, from: id
      end
      # 送信するとArticleモデルのカウントが1上がり、トップページに遷移することを確認する
      expect{
        find('input[name="commit"]').click
      }.to change { Article.count }.by(1)
      expect(current_path).to eq(root_path)
      # トップページには先ほど投稿した内容の記事が存在することを確認する
      expect(page).to have_content(@article.title)
    end
  end
  context '記事投稿ができないとき'do
    it 'ログインしていないと新規投稿ページに遷移できない' do
      # トップページに遷移する
      visit root_path
      # 新規投稿ページへのボタンがあることを確認する
      expect(page).to have_content('投稿する')
      # 新規投稿ページへのボタンをクリックする
      find('.nav-bar').find('.post').click
      # ログインページに遷移することを確認する
      expect(current_path).to eq(new_user_session_path)
    end
  end
end
