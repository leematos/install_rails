class Step < ActiveRecord::Base
  # field :title, type: String
  # field :permalink, type: String
  # field :content, type: String

  def to_param
    permalink
  end
end
