class EmailsController < ApplicationController
  def index
    @emails = Email.all.limit(500).pluck(:email)
    gon.emails = @emails
  end
end
