class V1::MemosController < ApplicationController
  before_action :authenticate_v1_user!

  def index
    memos = Memo.get_memos(params[:id])
    render json: {memos: memos}
  end

  def create
    content, user_id = memos_params[:content], memos_params[:user_id]
    memo = Memo.new(content: content, user_id: user_id)
    render json: {message: 'success'} and return if memo.save
    render json: {message: 'faild'} and return
  end

# 他のユーザーのメモも削除できてしまう？
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
