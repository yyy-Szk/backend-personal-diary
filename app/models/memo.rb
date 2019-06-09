class Memo < ApplicationRecord
  belongs_to :user

  def self.get_memos(user_id)
    today = Time.now
    today_range = today.beginning_of_day..today.end_of_day
    todays_memos = Memo.where(user_id: user_id, created_at: today_range)
    todays_memos.map { |memo| { id: memo.id, content: memo.content, time: memo.created_at.strftime("%H：%M") } }
  end
  
end
