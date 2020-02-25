require 'rails_helper'

RSpec.describe MoviesController, :type => :controller do
  describe "GET similar_movies" do
    it "assigns @movies to movies with same director if calling movie has director" do
      movie = Movie.create(director: "asdf")
      get :similar_movies, id: movie.id
      expect(assigns(:movies)).to eq(movie.same_director)
    end
    
    it "redirects to index if calling movie has no director" do
      movie = Movie.create(director: "")
      get :similar_movies, id: movie.id
      expect(response).to redirect_to movies_path
    end
  end
end