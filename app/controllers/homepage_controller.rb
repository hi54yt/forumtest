class HomepageController < ApplicationController
  def index
    @topics = Topic.all
  end
end
