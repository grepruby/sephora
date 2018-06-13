# frozen_string_literal: true

class Api::ApiController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound,
              ActionController::RoutingError,
              ActiveRecord::RecordInvalid,
              with: :respond_with_404

  protected

  def respond_with_404
    render json: { message: 'Record not found' }, root: 'errors', status: :not_found
  end
end
