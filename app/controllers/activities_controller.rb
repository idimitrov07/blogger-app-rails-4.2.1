class ActivitiesController < ApplicationController

  def index
    @activities = (Article.all + Photo.all).sort{ |a,b| b.created_at <=> a.created_at }
  end

end
