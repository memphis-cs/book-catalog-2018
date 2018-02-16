class AuthorsController < ApplicationController

    def index
        @authors = Author.all
        # render 'authors/index.html.erb'
    end

    def new
        @author = Author.new
        # render 'authors/new.html.erb'
    end

    def create
        Author.create!(first_name: params[:author][:first_name],
                       last_name: params[:author][:last_name],
                       year_born: params[:author][:year_born])
        redirect_to authors_url
    end

    def show
        @author = Author.find(params[:id])
        # render 'authors/show.html.erb'
    end

    def edit
        @author = Author.find(params[:id])
        # render 'authors/edit.html.erb'
    end

    def update
        @author = Author.find(params[:id])
        @author.update!(first_name: params[:author][:first_name],
                        last_name: params[:author][:last_name],
                        year_born: params[:author][:year_born])
        redirect_to authors_url
    end

    def destroy
        @author = Author.find(params[:id])
        @author.destroy!
        redirect_to authors_url
    end

end
