require 'rails_helper'

describe 'User API' do
  describe 'GET /api/v1/users' do
    let!(:users) { FactoryBot.create_list(:user, 10) }

    describe 'without pagination params' do
      before { get '/api/v1/users' }

      it 'returns HTTP status 200' do
        expect(response).to have_http_status 200
      end

      it 'returns all users' do
        expect(json_response[:data].size).to eq(10)
      end
    end

    describe 'with pagination params' do
      let!(:per_page) { 6 }

      it 'page 1, returns users per page' do
        get "/api/v1/users?page=1&count=#{per_page}"

        expect(json_response[:data].size).to eq(per_page)
      end

      it 'page 2, returns remaining users' do
        get "/api/v1/users?page=2&count=#{per_page}"

        expect(json_response[:data].size).to eq(users.count-per_page)
      end

      it 'page 3, returns no user' do
        get "/api/v1/users?page=3&count=#{per_page}"

        expect(json_response[:data]).to be_empty
      end
    end
  end

  describe 'GET /api/v1/users/:id' do
    let!(:user) { FactoryBot.create(:user)}
    let!(:user_hash) { UserSerializer.new(user).to_hash }

    before { get "/api/v1/users/#{user.id}" }

    it 'returns HTTP status 200' do
      expect(response).to have_http_status 200
    end

    it 'returns the requested user' do
      expect(json_response[:data][:attributes][:email]).to eq(user.email)
    end

    it 'returns serialized attributes' do
      expect(json_response[:data][:attributes].keys).to eq(user_hash[:data][:attributes].keys)
    end
  end
end
