class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :moves
  belongs_to :play

  private
  def moves
    PlayerSerializer.new(object.players).attributes
  end
end