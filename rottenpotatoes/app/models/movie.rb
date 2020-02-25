class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  
  def director
    self[:director].presence || "'#{title}' has no director info"
  end
  def has_director?
    self[:director].present?
  end
  def same_director
    Movie.where(director: self.director)
  end
end
