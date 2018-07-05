class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :moves, :x, :y

  belongs_to :play

  private
  def movesets
    PlayerSerializer.new(object.players).attributes
  end
end