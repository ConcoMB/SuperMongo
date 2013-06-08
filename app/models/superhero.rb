class Superhero
  include MongoMapper::Document

  key :name, String
  key :superpower, String
  key :is_good, Boolean

  belongs_to :city
end