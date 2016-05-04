class EmailsController < ApplicationController
  def index
    @emails = Email.where("id < ?", 400).pluck_to_hash([:email, :id]).to_json
    gon.emails = @emails
  end
end
