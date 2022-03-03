require 'rails_helper'

describe 'Users API', type: :request do 
    it 'returns all users' do
        get '/api/v1/users'

        expect(response).to have_http_status(:success)
        expect(JSON.parse(response.body).size).to eq(2)
    end
end