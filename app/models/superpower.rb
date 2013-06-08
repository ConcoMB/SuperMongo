class Superpower
  include MongoMapper::Document

  key :name, String
  key :rating, Integer

end