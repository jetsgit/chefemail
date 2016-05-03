module Api
  module V1
    class EmailsController < ApplicationController
      respond_to :json
      def index
        respond_with Email.where("id > ?", 500).pluck(:email, :id).make_hash, content_type: 'application/chefemail; v=1'
      end
    end
  end
end
