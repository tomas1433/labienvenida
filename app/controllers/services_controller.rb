class ServicesController < ApplicationController
 skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :find_service, only: [:show, :edit, :update]

  def index
    if params[:category]
      @services = Service.where(category: params[:category])
      else
      @services =  Service.all
   end
  end
   def show

  end

   def new
    @service = Service.new
  end
     def create
       @service = Service.new(service_params)
       @service.user = current_user
       if @service.save
         redirect_to services_path
         else
         render :new
       end
     end

   def edit

  end

   def update
     if @service.user  == current_user
     @service.update(service_params)
       redirect_to services_path
       else
       flash[:alert] = "Este no es su producto"
       render :index
     end
  end


  private
  def service_params
    params.require(:service).permit(:name, :city, :price, :category, :photo)
  end

  def find_service
    @service = Service.find(params[:id])
  end

end
