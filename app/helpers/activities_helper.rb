module ActivitiesHelper

  def path(activity)
    if Photo.all.include? activity
      photo_path(activity)
    else
      article_path(activity)
    end
  end

  def activity_img?(activity)
    Photo.all.include? activity
  end

end
