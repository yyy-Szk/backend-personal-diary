require 'rails_helper'

RSpec.describe Diary, type: :model do
  describe 'バリデーション' do

    before do
      @user = create(:user)
      @diary = create(:diary)
    end

    it 'contentとuser_idどちらも値が設定されていれば、OK' do
      expect(@diary.valid?).to eq true
    end

    it 'contentが空だとNG' do
      @diary.content = nil
      expect(@diary.valid?).to eq false
    end

    it 'emailが空だとNG' do
      @diary.user_id = nil
      expect(@diary.valid?).to eq false
    end

  end
end
