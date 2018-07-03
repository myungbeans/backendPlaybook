class PlayerSerializer < ActiveModel::Serializer
    attributes :name, :movesets, :x, :y
  
    private
    def movesets
      PlayerSerializer.new(object.players).attributes
    end
end