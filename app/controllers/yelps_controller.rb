class YelpsController < ApplicationController
  def index
    if params[:q].present?
    @responses =Yelp.client.search("New York", {q: 'coat check'})
    @businesses = @responses.businesses
    else 
      @responses = []
      @businesses = []
    end

  end

  def show
  end
end