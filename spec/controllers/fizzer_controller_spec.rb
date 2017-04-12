require 'rails_helper'

RSpec.describe FizzerController, type: :controller do

  describe 'GET #bubbles' do
    it 'returns http success when the number is an integer' do
      get :bubbles, id: 3
      expect(response).to have_http_status(:success)
    end

    it 'returns http 422 when the number is NOT an integer' do
      get :bubbles, id: 'a'
      expect(response).to have_http_status(422)
    end
  end
end
