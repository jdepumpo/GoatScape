module ApplicationHelper

  def goat_categories
    Goat.distinct(:category).pluck(:category)
  end
end
