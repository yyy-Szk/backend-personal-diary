require 'rails_helper'

RSpec.describe 'Memo management', type: :request do
  describe 'test' do

    before do
      @user = create(:user)
      @memo = create(:memo)
      post '/v1/auth/sign_in',
        params: { email: @user.email, password: @user.password },
        headers: { 'HTTP_ACCEPT' => 'application/json' }
      headers = response.headers
      @access_token, @client, @uid = headers["access-token"], headers["client"], headers["uid"]
    end

    describe 'メモ一覧を取得する' do
      it 'ステータス200が帰ってくる' do
        headers = { uid: @uid, client: @client, "access-token": @access_token }
        get "/v1/memos?id=#{@user.id}", headers: headers, as: :json
        expect(response.status).to eq 200
      end

      it 'メモ一覧がjsonとして帰ってくる' do
        headers = { uid: @uid, client: @client, "access-token": @access_token }
        get "/v1/memos?id=#{@user.id}", headers: headers, as: :json
        expect(JSON.parse(response.body)["memos"]).to eq [
          {"id" => @memo.id, "content" => @memo.content, "time" => @memo.created_at.strftime("%H：%M")}
        ]
      end
    end

    # describe 'メモを作成する' do
    #   it "ステータスコード200が帰ってくる" do
    #   end
    #
    #   it "json" do
    #   end
    # end

    # describe 'メモを削除する' do
      # it "ステータスコード200が帰ってくる" do
      # end

      # it "json" do
      # end
    # end

  end
end
