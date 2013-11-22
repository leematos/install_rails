class EdgeSerializer < ActiveModel::Serializer
  attributes :id, :predecessor_id, :successor_id
end
