json.array!(@answer_results) do |answer_result|
  json.extract! answer_result, :survey_id, :question_id, :content
  json.url answer_result_url(answer_result, format: :json)
end
