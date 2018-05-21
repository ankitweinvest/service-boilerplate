class ApplicationController < ActionController::API
  # /api/health
  def health
    render json: { message: 'healthy' }, status: :ok
  end
end
