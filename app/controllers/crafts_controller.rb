class CraftsController < ApplicationController
    def index
        crafts = Craft.all
        render json: CraftSerializer.new(crafts)
    end
end
