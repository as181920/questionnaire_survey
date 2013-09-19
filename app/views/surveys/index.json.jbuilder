json.array!(@surveys) do |survey|
  json.extract! survey, :name, :preface
  json.url survey_url(survey, format: :json)
end
