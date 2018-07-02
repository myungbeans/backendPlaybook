class PlaySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title

  belongs_to :user
end
