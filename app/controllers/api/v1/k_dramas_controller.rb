class Api::V1::KDramasController < ApplicationController


    def index 
        kdramas = KDrama.all 
        render json: KDramaSerializer.new(kdramas) 
    end

    def create 
       kdrama = KDrama.new(kdrama_params)
       if kdrama.save
         render json: KDramaSerializer.new(kdrama), status: :accepted
       else
        render json: {errors: kdrama.errors.full_messages} 
       end 
    end 


    def show
        kdrama = KDrama.find_by(id: params[:id])
        render json: KDramaSerializer.new(kdrama)
    end

    def update 
        kdrama = KDrama.find_by(id: params[:id])
        if kdrama.update(kdrama_params)
          render json: KDramaSerializer.new(kdrama), status: :accepted
        else
            render json: {errors: kdrama.errors.full_messages}
        end 
    end 

    def destroy
        kdrama = KDrama.find_by(id: params[:id])
        if kdrama.destroy
          render json: { id: kdrama.id }
        end
    end
    





    private


    def kdrama_params 
        params.require(:k_drama).permit(:title, :release_year, :watched, :where_to_watch, :cover_photo, :my_rating, :comment, :category_id)
    end 

   

end
