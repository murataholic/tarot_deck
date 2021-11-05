require 'rails_helper'

RSpec.describe 'Nices', type: :request do
  describe 'GET /create' do
    it 'returns http success' do
      get '/nices/create'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /destroy' do
    it 'returns http success' do
      get '/nices/destroy'
      expect(response).to have_http_status(:success)
    end
  end
end
