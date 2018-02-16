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
        @author = Author.new(first_name: params[:author][:first_name],
                             last_name: params[:author][:last_name],
                             year_born: params[:author][:year_born])
        if @author.save
            flash[:notice] = "Author saved successfully!"
            redirect_to authors_url
        else
            flash.now[:alert] = "Author save failed!"
            render :new
        end
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
        if @author.update(first_name: params[:author][:first_name],
                          last_name: params[:author][:last_name],
                          year_born: params[:author][:year_born])
            flash[:notice] = "Author saved successfully!"
            redirect_to authors_url
        else
            flash.now[:alert] = "Author save failed!"
            render :edit
        end
    end

    def destroy
        begin
            @author = Author.find(params[:id])
        rescue ActiveRecord::RecordNotFound
            flash[:alert] = "Author destruction failed!"
            redirect_to authors_url and return
        end
        if @author.destroy
            flash[:notice] = "Author destroyed successfully!"
            redirect_to authors_url
        else
            flash[:alert] = "Author destruction failed!"
            redirect_to authors_url
        end
    end

end
