class V1::DiariesController < ApplicationController
  before_action :authenticate_v1_user!

  def index
    diaries = Diary.where(user_id: params[:id]).order(created_at: "ASC")
    diaries = diaries.map { |diary| {id: diary.id, content: diary.content, year: diary.created_at.strftime("%Y"),
                          month: diary.created_at.strftime("%-m"), day: diary.created_at.strftime("%d")} }
    render json: {diaries: diaries}
  end

  def create
    content, user_id = diaries_params[:content], diaries_params[:user_id]
    diary = Diary.new(user_id: user_id, content: content)
    if diary.save
      render json: {message: 'success'} and return
    else
      render json: {message: 'error'} and return
    end
  end

  private

  def diaries_params
    params.fetch(:attributes, {}).permit(:content, :user_id)
  end
end
