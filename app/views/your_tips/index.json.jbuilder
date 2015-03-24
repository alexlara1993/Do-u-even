json.array!(@your_tips) do |your_tip|
  json.extract! your_tip, :id, :tip, :description
  json.url your_tip_url(your_tip, format: :json)
end
