class CraftSerializer
  include FastJsonapi::ObjectSerializer
  
  attributes :name, :craft_type, :description, :date_started, :date_completed, :price, :date_sold, :image_url
  
  attribute :date_started do |craft|
    craft.date_started != nil ? craft.date_started.strftime("%m/%d/%Y") : nil
  end

  attribute :date_completed do |craft|
    craft.date_completed != nil ? craft.date_completed.strftime("%m/%d/%Y") : nil
  end

  attribute :date_sold do |craft|
    craft.date_sold != nil ? craft.date_sold.strftime("%m/%d/%Y") : nil
  end

  attribute :created_at do |craft|
    craft.created_at.strftime("%m/%d/%Y")
  end
  
  attribute :backlog do |craft|
    craft.date_started == nil ? true : false
  end

  attribute :wip do |craft|
    craft.date_completed == nil && craft.date_started != nil ? true : false
  end

  attribute :inventory do |craft|
    craft.date_completed != nil && craft.date_sold == nil ? true : false
  end

  attribute :sold do |craft|
    craft.date_sold != nil ? true : false
  end
end