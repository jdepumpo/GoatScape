module ApplicationHelper

  def goat_categories
    Goat.all.uniq.pluck(:category)
  end
end
