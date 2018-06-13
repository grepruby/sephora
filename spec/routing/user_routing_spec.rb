require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :routing do
  describe 'user routing' do
    it 'should routes to /api/v1/users to api/v1/users#index' do
      expect(:get => '/api/v1/users').to route_to('api/v1/users#index')
    end

    it 'should routes to /api/v1/users/:id to api/v1/users#show' do
      expect(:get => '/api/v1/users/1').to route_to(controller: "api/v1/users", action: "show", id: "1")
    end
  end
end
