class ZoosController < ApplicationController

    def index
        @zoos = Zoo.all
    end
    
    def new
        @zoo = Zoo.new
    end
   
    def create
        zoo_param = params.require(:zoo).permit(:name, :address, :species)
        new_zoo = Zoo.create(zoo_param)

        redirect_to zoo_path(new_zoo)
    end

    def edit
        @zoo = Zoo.find(params[:id])
    end


    def update
        zoo = Zoo.find(params[:id])

        zoo_param = params.require(:zoo).permit(:name, :address, :species)

        zoo.update(zoo_param)

        redirect_to zoo_path(zoo)
    end

    def delete
        zoo = Zoo.find(params[:id])

        zoo.destroy
        
        redirect_to zoos_path(zoo)
    end

    def show
        @zoo = Zoo.find(params[:id])
    end

end
