json.array!(@typefaces) do |typeface|
  json.extract! typeface, :familyname, :designer, :year
  json.url typeface_url(typeface, format: :json)
end