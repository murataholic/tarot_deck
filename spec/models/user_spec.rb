require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できるとき' do
      it '入力欄に空欄がなく、入力不備がなければ登録できる' do
        expect(@user).to be_valid
      end
      it 'nicknameに「〜」や「・」が含まれていても登録できる' do
        @user.nickname = 'ザ・ピ〜ス'
        expect(@user).to be_valid
      end
    end

    context '新規登録できないとき' do
      it 'nicknameが空では登録できない' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("ニックネームを入力してください")
      end
      it 'nicknameに「ゔ」「ヴ」が含まれる場合は登録できない' do
        @user.nickname = 'ヴィゔぁ'
        @user.valid?
        expect(@user.errors.full_messages).to include('ニックネームは6文字以内のひらがな･カタカナで入力してください')
      end
      it 'nicknameに全角記号が含まれる場合は登録できない' do
        @user.nickname = '！？＠＄％＃'
        @user.valid?
        expect(@user.errors.full_messages).to include('ニックネームは6文字以内のひらがな･カタカナで入力してください')
      end
      it 'nicknameに半角英数字が含まれる場合は登録できない' do
        @user.nickname = 'sum41!'
        @user.valid?
        expect(@user.errors.full_messages).to include('ニックネームは6文字以内のひらがな･カタカナで入力してください')
      end
      it 'emailが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("メールアドレスを入力してください")
      end
      it '重複したemailが存在する場合、登録できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include('メールアドレスはすでに存在します')
      end
      it 'メールアドレスに@を含まない場合は登録できない' do
        @user.email = 'hogehoge.com'
        @user.valid?
        expect(@user.errors.full_messages).to include('メールアドレスは不正な値です')
      end
      it 'passwordが空では登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードを入力してください")
      end
      it 'password_confirmationが空では登録できない' do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
      end
      it 'passwordとpassword_confirmationが一致しない場合、登録できない' do
        @user.password = 'sample1'
        @user.password_confirmation = 'samp1e123'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
      end
      it 'passwordが5文字以下では登録できない' do
        @user.password = '12345'
        @user.password_confirmation = '12345'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは6文字以上で入力してください')
      end
      it 'passwordに全角文字が含まれる場合は登録できない' do
        @user.password = 'ほげほげhoge1'
        @user.password_confirmation = 'ほげほげhoge1'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードが不正な値です')
      end
    end
  end
end

