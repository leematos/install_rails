class StepSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :edges, embed: :ids, include: true
end
