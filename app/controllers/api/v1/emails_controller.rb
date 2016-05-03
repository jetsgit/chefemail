module Api
  module V1
    class EmailsController < ApplicationController
      respond_to :json
      def index
        @emails = Email.where("id > ?", 500).pluck(:email, :id).make_hash
      end
    end
  end
end
