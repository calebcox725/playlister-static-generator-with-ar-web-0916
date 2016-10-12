module Slugifiable
  def to_slug
    name.split(" ").map(&:downcase).join("-")
  end
end