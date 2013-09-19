json.array!(@questions) do |question|
  json.extract! question, :title, :survey_id, :category
  json.url question_url(question, format: :json)
end
