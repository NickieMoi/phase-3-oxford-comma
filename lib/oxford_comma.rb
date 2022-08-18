def oxford_comma(array)
    if array.length > 2
      leng = array.length - 1
      arr = array.slice(0...leng)
      new_arr = arr.map {|item| "#{item},"}
      # p new_arr
      last_arra = [array[-1]] 
      last_arra.unshift("and")
      str_one = new_arr.join(" ") 
      str = last_arra.join(" ")
      puts arr
      return "#{str_one} #{str}"
    elsif array.length == 2 
      new_arr = array.insert(1, "and")
      return new_arr.join(" ")
    else
      array.join
    end
  end