class V1::MemosController < ApplicationController

  def index
    today = Time.now
    today_range = today.beginning_of_day..today.end_of_day
    todays_memos = Memo.where(user_id: 1, created_at: today_range)
    memos = todays_memos.map { |memo| { id: memo.id, content: memo.content, time: memo.created_at.strftime("%H：%M") } }
    render json: {memos: memos}
  end

  def create
    content, user_id = memos_params[:content], memos_params[:user_id]
    memo = Memo.new(content: content, user_id: user_id)
    render json: {message: 'success'} and return if memo.save
    render json: {message: 'faild'} and return
  end

  def destroy
    memo = Memo.find_by(id: params[:id])
    render json: { message: 'success' } and return if memo&.destroy
    render json: { message: 'faild' }
  end

  private

  def memos_params
    params.fetch(:attributes, {}).permit(:content, :user_id)
  end
end
