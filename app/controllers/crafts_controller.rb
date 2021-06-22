class CraftsController < ApplicationController
    def index
        crafts = Craft.all
        render json: CraftSerializer.new(crafts)
    end

    def create
        craft = Craft.new(craft_params)
        if craft.save
            render json: CraftSerializer.new(craft)
        else
            render json: {invalid: "Error occurred on save"}
        end
    end

    private
        def craft_params
            params.require(:craft).permit(:name, :craft_type, :description, :date_started, :date_completed, :date_sold, :price, :notes, :image_url)
        end
end
