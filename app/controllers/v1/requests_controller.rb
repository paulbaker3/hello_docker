module V1
  class RequestsController < ApplicationController
    def index
      api_request = ::Request.new(http_host: request.env['HTTP_HOST'],
                                  request_id: request.env['action_dispatch.request_id'])
      api_request.save

      render json: { count: Request.all.count, data: Request.all.order(created_at: :desc) } , status: 200
    end
  end
end