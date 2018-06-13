# frozen_string_literal: true

class Api::V1::UsersController < Api::ApiController
  before_action :set_user, only: %i[show]

  # GET /users
  def index
    @users = User.page(params[:page]).per(params[:per_page])
    options = {}
    options[:meta] = { total_count: @users.total_count }
    render json: UserSerializer.new(@users, options).serialized_json
  end

  # GET /users/1
  def show
    render json: UserSerializer.new(@user).serialized_json
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end
end
