json.array!(@hours_entries) do |hours_entry|
  json.extract! hours_entry, :id, :evidence, :num_hours, :shift_start, :shift_end, :submitted, :user_id
  json.url hours_entry_url(hours_entry, format: :json)
end
