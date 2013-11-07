class Step < ActiveRecord::Base
  # field :title, type: String
  # field :permalink, type: String
  # field :content, type: String

  has_many :edges, foreign_key: "predecessor_id", dependent: :destroy
  has_many :successors, through: :edges, source: :successor
  has_many :reverse_edges, foreign_key: "successor_id",
                            class_name: "Edge",
                            dependent: :destroy
  has_many :predecessors, through: :reverse_edges, source: :predecessor

  def to_param
    permalink
  end
end
