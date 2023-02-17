require 'rails_helper'

RSpec.describe 'Groups', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/group/index'
      expect(response).to have_http_status(:success)
    end
  end
end
