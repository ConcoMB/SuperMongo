class City
  include MongoMapper::Document

  key :name, String

  many :superheroes
end