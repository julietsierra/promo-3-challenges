def tag(tag_name, attr = nil)

if attr == nil
  "<#{tag_name}> #{yield} </#{tag_name}>"
   else
  "<#{tag_name} #{attr[0]}='#{attr[1]}'>#{yield}</#{tag_name}>"
 end

end


  #TODO:  Build HTML tags around  content given in the block
 #       The method can be called with an optional HTML attribute inputted as [attr_name, attr_value]
def timer_for
  #TODO:  Return time taken to execute the given block
  start_time = time.now
  yield
  end_time = time.now - start_time

end

def transform(element)
  #TODO:  Simply execute the given block on element
  yield(element)
end

