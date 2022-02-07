class ApartmentsController < ApplicationController

    def index
        apartments = Apartment.all
        render json: apartments
    end

    def show
        apartments = Apartment.find_by_id(params[:id])
        render json: apartments
    end

    def create
        apartments = Apartment.create(number: params[:number])
    end

    def update
        apartment = Apartment.find_by(number: params[:number])
        apartment.update(number: params[:number])
        render json: apartments
    end

    def destroy
        apartment = Apartment.find_by(number: params[:number])
        apartment.destroy
    end

end
