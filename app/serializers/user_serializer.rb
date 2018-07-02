class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :plays

  private
  def plays
    PlaySerializer.new(object.plays).attributes
  end
end
