require 'rails_helper'

RSpec.describe Memo, type: :model do
  describe 'バリデーション' do

    before do
      @user = create(:user)
      @memo = create(:memo)
    end

    it 'contentとuser_idどちらも値が設定されていれば、OK' do
      expect(@memo.valid?).to eq true
    end

    it 'contentが空だとNG' do
      @memo.content = nil
      expect(@memo.valid?).to eq false
    end

    it 'emailが空だとNG' do
      @memo.user_id = nil
      expect(@memo.valid?).to eq false
    end

  end
end
