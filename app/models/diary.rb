class Diary < ApplicationRecord
  belongs_to :user

  validates :content, presence: true
  validates :user_id, presence: true

  def self.get_diaries(user_id)
    diaries = Diary.where(user_id: user_id).order(created_at: "ASC")
    diaries.map { |diary| {id: diary.id, content: diary.content, year: diary.created_at.strftime("%Y"),
                          month: diary.created_at.strftime("%-m"), day: diary.created_at.strftime("%d")} }
  end

end
