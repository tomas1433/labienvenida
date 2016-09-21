class ServicesController < ApplicationController
 before_action :find_service, only: [:show, :edit, :update]

  def index
      @services =  Service.all
  end
   def show

  end

   def new
    @service = Service.new
  end
     def create
       @service = Service.new(service_params)
       if @service.save
         redirect_to services_path
         else
         render :new
       end
     end

   def edit

  end

   def update

     if @service.update(service_params)
       redirect_to services_path
       else
       render :edit
     end
  end


  private
  def service_params
    params.require(:service).permit(:name, :city, :price)
  end

  def find_service
    @service = Service.find(params[:id])
  end

end