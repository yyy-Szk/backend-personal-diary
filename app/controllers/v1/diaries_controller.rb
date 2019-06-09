class V1::DiariesController < ApplicationController
  before_action :authenticate_v1_user!

  def index
    diaries = Diary.get_diaries(params[:id])
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
