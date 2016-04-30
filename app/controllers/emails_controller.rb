class EmailsController < ApplicationController
  def index
    @emails = Email.pluck(:name).limit(25)
    gon.emails = @emails
  end
end
