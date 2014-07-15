# Encoding: utf-8

def mail_joke(email)
  if email.include?("@")
    match = email.match(/^([\w.-]+)@(\w+).(\w+)$/)
    if match[2] == "lewagon"
       "Well done #{match[1]}, you're skilled and capable"
    elsif   match[2] == "gmail"
       "#{match[1]}, you're an average but modern person"
    elsif match[2]  == "live"
       "#{match[1].gsub("."," ")}, aren't you born before 1973?"
    else
       "Sorry #{match[1]}, we don't know how to judge '#{match[2]}.#{match[3]}'"
    end
  else
    fail ArgumentError
  end
  # TODO: Return a joke suited to the email provided
end


