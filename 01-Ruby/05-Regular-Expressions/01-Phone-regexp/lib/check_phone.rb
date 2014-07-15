def french_phone_number?(phone_number)
  french_number= phone_number.gsub(/\+33/, "0")
  french_number= french_number.gsub(/\s|\-/, '')

  if french_number =~ /^0[1-9]\d{8}$/
    true
  else
    false
  end
end

puts french_phone_number?("+33667571112")

