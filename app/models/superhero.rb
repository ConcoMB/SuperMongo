class Superhero
  include MongoMapper::Document

  key :name, String
  key :superpower, String

  belongs_to :city
end