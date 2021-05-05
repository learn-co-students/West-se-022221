class PetSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :breed, :meme_phrase
end
