class CraftSerializer
  include FastJsonapi::ObjectSerializer
  
  attributes :name, :craft_type, :description, :date_started, :date_completed, :price, :date_sold, :notes, :image_url
  
  attribute :backlog do |craft|
    craft.date_started == nil ? true : false
  end

  attribute :wip do |craft|
    craft.date_completed == nil && craft.date_started != nil ? true : false
  end

  attribute :inventory do |craft|
    craft.date_completed != nil ? true : false
  end
end