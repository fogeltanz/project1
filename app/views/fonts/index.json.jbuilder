json.array!(@fonts) do |font|
  json.extract! font, :weightname, :optimalsize, :typeface_id
  json.url font_url(font, format: :json)
end