require 'rails_helper'

describe EmailsController, type: :controller do
  before do
    400.times {create :email}
  end
  context "GET index" do
    it 'Returns status of 200' do
      get :index
      expect(response.status).to eq(200)
    end
  end
end
