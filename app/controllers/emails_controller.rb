class EmailsController < ApplicationController
  def index
    @emails = Email.all.limit(99000).pluck(:email)
    gon.emails = @emails
  end
end
