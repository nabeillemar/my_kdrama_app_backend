class Api::V1::KDramasController < ApplicationController


    def index #rendering all data of the kdramas in the form of JSON 
        kdramas = KDrama.all # we don't need to use instance varaibles anymore because of .....
        #render json: kdramas #this shows you everything #array then the objects
        render json: KDramaSerializer.new(kdramas) #this adds the type, you have to add the attributes that you want to bring in #getting a data object that has an array, we have an attributes object that has an array, #we can restrict the data
    end

    def create #creating new kdramas based on whatever kdrama_params we get from our frontend
       kdrama = KDrama.new(kdrama_params)
       if kdrama.save
         render json: KDramaSerializer.new(kdrama), status: :accepted
        #render json: kdrama, status: :accepted # if the instances is saved then render the data json if it saved sucessfully, status allows us to communicate with the client side 
       else
        render json: {errors: kdrama.errors.full_messages}, status: :unprocessible_entity #if the instance doesn't save we can send this to the front end to the client (user side) we can display the full messages , need to see what these status come from and what they mean
       end 
    end 



    private

    #def kdrama_params # permit a parameter ... must be includes in the body of the POST or POST requests we will be making with JS fetch 
     #   params.require(:k_dramas).permit(:title, :release_year, :watched, :where_to_watch, :cover_photo, :my_rating, :comment, :category_id)
   # end 

    def kdrama_params # permit a parameter ... must be includes in the body of the POST or POST requests we will be making with JS fetch 
        params.require(:k_drama).permit(:title, :release_year, :watched, :where_to_watch, :cover_photo, :my_rating, :comment, :category_id)
    end 

end
