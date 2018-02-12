class AuthorsController < ApplicationController

    def index
        @authors = Author.all
        # render 'authors/index.html.erb'
    end

    def show
        @author = Author.find(params[:id])
        # render 'authors/show.html.erb'
    end

end
