require 'rails_helper'

RSpec.describe '記事投稿', type: :system do
  before do
    @user = FactoryBot.create(:user)
    @article = FactoryBot.build(:article, user_id: @user.id)
    @monster = Monster.all
    @arcanum = Arcanum.all
    @monster_ids = %w[
      article_mons1_id article_mons2_id article_mons3_id article_mons4_id article_mons5_id
      article_mons6_id article_mons7_id article_mons8_id article_mons9_id article_mons10_id
      article_mons11_id article_mons12_id article_mons13_id article_mons14_id article_mons15_id
      article_mons16_id article_mons17_id article_mons18_id article_mons19_id article_mons20_id
    ]
    @arcanum_ids = %w[
      article_arc1_id article_arc2_id article_arc3_id article_arc4_id article_arc5_id
      article_arc6_id article_arc7_id article_arc8_id article_arc9_id article_arc10_id
      article_arc11_id article_arc12_id article_arc13_id article_arc14_id article_arc15_id
      article_arc16_id article_arc17_id article_arc18_id article_arc19_id article_arc20_id
    ]
  end

  context '記事投稿ができるとき' do
    it 'ログインしたユーザーは新規投稿できる' do
      # ログインする
      sign_in(@user)
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
      # 「投稿する」をクリックするとArticleモデルのカウントが1上がり、トップページに遷移することを確認する
      expect do
        find('input[name="commit"]').click
      end.to change { Article.count }.by(1)
      expect(current_path).to eq(root_path)
      # トップページには先ほど投稿した内容の記事が存在することを確認する
      expect(page).to have_content(@article.title)
      expect(page).to have_content(@article.text)
    end
  end
  context '記事投稿ができないとき' do
    it 'ログインしていない場合、新規投稿ページに遷移できない' do
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

RSpec.describe '記事編集', type: :system do
  before do
    @user1 = FactoryBot.create(:user)
    @user2 = FactoryBot.create(:user)
    @article1 = FactoryBot.create(:article, user_id: @user1.id)
    @article2 = FactoryBot.create(:article, user_id: @user2.id)
    @monster = Monster.all
    @arcanum = Arcanum.all
  end
  context '記事編集ができるとき' do
    it 'ログインしたユーザーは自分が投稿した記事の編集ができる' do
      # article1を投稿したユーザーでログインする
      sign_in(@user1)
      # article1の詳細ページに遷移する
      visit article_path(@article1)
      # article1に「編集」へのリンクがあることを確認する
      expect(page).to have_link '編集する', href: edit_article_path(@article1)
      # 編集ページへ遷移する
      visit edit_article_path(@article1)
      # すでに投稿済みの内容がフォームに入っていることを確認する
      expect(
        find('#article_title').value
      ).to eq(@article1.title)
      expect(
        find('#article_text').value
      ).to eq(@article1.text)
      expect(
        find('#article_mons1_id').value
      ).to eq(@article1.mons1_id.to_s)
      expect(
        find('#article_arc1_id').value
      ).to eq(@article1.arc1_id.to_s)
      # 投稿内容を編集する(1枚目のタロットを皇帝(id:11)のわたぼう(id:20)に変更)
      fill_in 'article_title', with: "#{@article1.title}+編集したタイトル"
      fill_in 'article_text', with: "#{@article1.text}+編集したテキスト"
      select 'わたぼう', from: 'article_mons1_id'
      select '皇帝', from: 'article_arc1_id'
      # 「投稿する」をクリックしてもArticleモデルのカウントは変わらないことを確認する
      expect do
        find('input[name="commit"]').click
      end.to change { Article.count }.by(0)
      # article1の詳細ページに遷移する
      expect(current_path).to eq(article_path(@article1))
      # トップページには先ほど変更した内容の記事が存在することを確認する
      expect(page).to have_content("#{@article1.title}+編集したタイトル")
      expect(page).to have_content("#{@article1.text}+編集したテキスト")
      expect(page).to have_selector "img[src$='/tarots/20/20-11.png']"
    end
  end
  context '記事編集ができないとき' do
    it 'ログインしたユーザーは自分以外が投稿した記事の編集画面には遷移できない' do
      # article1を投稿したユーザーでログインする
      sign_in(@user1)
      # article2の詳細ページに遷移する
      visit article_path(@article2)
      # article2に「編集」へのリンクがないことを確認する
      expect(page).to have_no_link '編集する', href: edit_article_path(@article2)
    end
    it 'ログインしていない場合、記事編集画面には遷移できない' do
      # トップページに入る
      visit root_path
      # article1の詳細ページに遷移する
      visit article_path(@article1)
      # article1に「編集」へのリンクがないことを確認する
      expect(page).to have_no_link '編集する', href: edit_article_path(@article1)
      # トップページに戻る
      visit root_path
      # article2の詳細ページに遷移する
      visit article_path(@article2)
      # article2に「編集」へのリンクがないことを確認する
      expect(page).to have_no_link '編集する', href: edit_article_path(@article2)
    end
  end
end

RSpec.describe '記事削除', type: :system do
  before do
    @user1 = FactoryBot.create(:user)
    @user2 = FactoryBot.create(:user)
    @article1 = FactoryBot.create(:article, user_id: @user1.id)
    @article2 = FactoryBot.create(:article, user_id: @user2.id)
  end
  context '記事削除ができるとき' do
    it 'ログインしたユーザーは自らが投稿した記事の削除ができる' do
      # article1を投稿したユーザーでログインする
      sign_in(@user1)
      # article1の詳細ページに遷移する
      visit article_path(@article1)
      # article1に「削除」へのリンクがあることを確認する
      expect(page).to have_link '削除する', href: article_path(@article1)
      # 投稿を削除するとレコードの数が1減ることを確認する
      expect do
        find_link('削除する', href: article_path(@article1)).click
      end.to change { Article.count }.by(-1)
      # トップページに遷移する
      expect(current_path).to eq(root_path)
      # トップページにはarticle1の内容が存在しないことを確認する（タイトル、テキスト）
      expect(page).to have_no_content(@article1.title)
      expect(page).to have_no_content(@article1.text)
    end
  end
  context '記事削除ができないとき' do
    it 'ログインしたユーザーは自分以外が投稿した記事の削除ができない' do
      # article1を投稿したユーザーでログインする
      sign_in(@user1)
      # article2の詳細ページに遷移する
      visit article_path(@article2)
      # article2に「削除」へのリンクがないことを確認する
      expect(page).to have_no_link '削除する', href: article_path(@article2)
    end
    it 'ログインしていない場合、記事詳細ページに「削除する」ボタンはない' do
      # トップページに入る
      visit root_path
      # article1の詳細ページに遷移する
      visit article_path(@article1)
      # article1に「削除」へのリンクがないことを確認する
      expect(page).to have_no_link '削除する', href: article_path(@article1)
      # トップページに戻る
      visit root_path
      # article2の詳細ページに遷移する
      visit article_path(@article2)
      # article2に「削除」へのリンクがないことを確認する
      expect(page).to have_no_link '削除する', href: article_path(@article2)
    end
  end
end
