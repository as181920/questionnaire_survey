json.array!(@answer_sheets) do |answer_sheet|
  json.extract! answer_sheet, :survey_id
  json.url answer_sheet_url(answer_sheet, format: :json)
end
