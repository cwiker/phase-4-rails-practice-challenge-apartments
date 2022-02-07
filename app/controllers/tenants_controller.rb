class TenantsController < ApplicationController

    def index
        apartments = Tenant.all
        render json: Tenants
    end

    def show
        Tenants = Tenant.find_by_id(params[:id])
        render json: Tenants
    end

    def create
        Tenants = Tenant.create(plant_params)
    end

    def update
        Tenant = Tenant.find_by(number: params[:number])
        Tenant.update(plant_params)
        render json: tenants
    end

    def destroy
        Tenant = Tenant.find_by(number: params[:number])
        apartment.destroy
    end
    private

    def tenant_params
        params.permit(:name, :age)
    end


end
