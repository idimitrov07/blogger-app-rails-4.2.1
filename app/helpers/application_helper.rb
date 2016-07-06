module ApplicationHelper
  def activity_text(value)
    value.delete '#'
  end
end
