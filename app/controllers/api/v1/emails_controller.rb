module Api
  module V1
    class EmailsController < ApplicationController
      respond_to :json
      def index
        respond_with Email.where("id > ?", 399).pluck_to_hash([:email, :id]).to_json, content_type: 'application/chefemail; v=1'
      end
    end
  end
end
