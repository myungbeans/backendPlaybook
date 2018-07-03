class PlayerSerializer < ActiveModel::Serializer
    attributes :name, :movesets
  
    private
    def movesets
      PlayerSerializer.new(object.players).attributes
    end
end