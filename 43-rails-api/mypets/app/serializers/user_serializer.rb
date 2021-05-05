class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :username, :pets

  # has_many :pets

end
