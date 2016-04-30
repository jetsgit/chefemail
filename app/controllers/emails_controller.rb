class EmailsController < ApplicationController
  def index
    @emails = Email.all.limit(225).pluck(:email)
    gon.emails = @emails
  end
end
