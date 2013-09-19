json.array!(@answers) do |answer|
  json.extract! answer, :title, :question_id, :need_comment
  json.url answer_url(answer, format: :json)
end
