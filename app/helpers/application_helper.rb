module ApplicationHelper

  def goat_categories
    Goat.distinct(:category).pluck(:category)
  end

  def goats_all
    Goat.all
  end
end
