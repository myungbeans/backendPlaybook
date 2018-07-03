class PlaySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title

  belongs_to :user

  private
  def plays
    PlaySerializer.new(object.plays).attributes
  end
end
