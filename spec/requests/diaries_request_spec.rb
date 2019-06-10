require 'rails_helper'

RSpec.describe 'Diary management', type: :request do
  describe 'test' do

    before do
      @user = create(:user)
      @diary = create(:diary)
      post '/v1/auth/sign_in',
        params: { email: @user.email, password: @user.password },
        headers: { 'HTTP_ACCEPT' => 'application/json' }
      headers = response.headers
      @access_token, @client, @uid = headers["access-token"], headers["client"], headers["uid"]
    end

    describe '日記一覧を取得する' do
      it 'ステータス200が帰ってくる' do
        headers = { uid: @uid, client: @client, "access-token": @access_token }
        get "/v1/diaries?id=#{@user.id}", headers: headers, as: :json
        expect(response.status).to eq 200
      end

      it '日記一覧がjsonとして帰ってくる' do
        headers = { uid: @uid, client: @client, "access-token": @access_token }
        get "/v1/diaries?id=#{@user.id}", headers: headers, as: :json
        expect(JSON.parse(response.body)["diaries"]).to eq [
          { "id" => @diary.id, "content" => @diary.content, "year" => @diary.created_at.strftime("%Y"),
          "month" => @diary.created_at.strftime("%-m"), "day" => @diary.created_at.strftime("%d") }
        ]
      end
    end

    describe '日記を作成する' do
      it "ステータスコード200が帰ってくる" do
        headers = { uid: @uid, client: @client, "access-token": @access_token }
        post "/v1/diaries", headers: headers, params: { attributes: { content: 'foobar', user_id: 1 }}
        expect(response.status).to eq 200
      end

      it "最後に作成された日記の「content」が、送信したものと同じこと" do
        headers = { uid: @uid, client: @client, "access-token": @access_token }
        post "/v1/diaries", headers: headers, params: { attributes: { content: 'foobar', user_id: 1 }}
        expect(Diary.last.content).to eq "foobar"
      end

      it "最後に作成された日記の「user_id」が、送信したものと同じこと" do
        headers = { uid: @uid, client: @client, "access-token": @access_token }
        post "/v1/diaries", headers: headers, params: { attributes: { content: 'foobar', user_id: 1 }}
        expect(Diary.last.user_id).to eq 1
      end
    end

  end
end


# end
