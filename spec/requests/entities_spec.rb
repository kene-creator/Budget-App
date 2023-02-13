# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Entities', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/entities/index'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get '/entities/show'
      expect(response).to have_http_status(:success)
    end
  end
end
