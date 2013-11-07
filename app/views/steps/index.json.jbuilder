json.array!(@steps) do |step|
  json.extract! step, :title, :permalink, :content
  json.url step_url(step, format: :json)
end
