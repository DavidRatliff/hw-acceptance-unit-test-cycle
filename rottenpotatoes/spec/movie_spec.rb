require 'rails_helper'

RSpec.describe Movie do
  describe "same_director" do
    before :each do
      @asdf_movie1 = Movie.create(director: "asdf")
      @asdf_movie2 = Movie.create(director: "asdf")
      @no_director = Movie.create()
      @diff_director = Movie.create(director: "aaaa")
    end
    it "should return movies with same director" do
      expect(@asdf_movie1.same_director).to include(@asdf_movie2)
    end
    it "should not return movies with different director" do
      expect(@asdf_movie1.same_director).to_not include(@diff_director)
    end
    it "should not return movies with no director" do
      expect(@asdf_movie1.same_director).to_not include(@no_director)
    end
  end
end