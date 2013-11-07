class Edge < ActiveRecord::Base
  belongs_to :predecessor, class_name: "Step"
  belongs_to :successor, class_name: "Step"
  validates :predecessor_id, presence: true
  validates :successor_id, presence: true
end
