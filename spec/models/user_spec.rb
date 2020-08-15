require 'rails_helper'

RSpec.describe User, type: :model do
  context "accountを指定している時" do
    it "ユーザーが作られる" do
      user = FactoryBot.build(:user)
      # binding.pry
      expect(user.valid?).to eq true
    end
  end

  context "account を指定していないとき" do
    fit "ユーザー作成に失敗する" do
      user = FactoryBot.build(:user, name: "foo", account: nil, email: Faker::Internet.email)
      binding.pry
      expect(user.valid?).to eq true
    end
  end

  context "まだ同じ名前の account が存在しないとき" do
    it "ユーザーが作られる" do
    end
  end

  context "すでに同じ名前の account が存在しているとき" do
    it "ユーザー作成に失敗する" do
    end
  end
  # pending "add some examples to (or delete) #{__FILE__}"
end
