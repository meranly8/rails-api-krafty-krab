class CraftSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :date_started, :date_completed, :for_sale, :price, :date_sold, :type, :notes, :image_url
end
