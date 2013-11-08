class StepSerializer < ActiveModel::Serializer
  attributes :id
  has_many :successors, embed: :ids
end
