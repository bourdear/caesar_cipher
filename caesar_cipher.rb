def cipher(str, n)

    caps = ('A'..'Z').to_a
    low = ('a'..'z').to_a
  
    str.chars.map do |x|
      if caps.include?(x)
        idx = caps.index(x)
        new_idx = (idx + n) % caps.length
        caps[new_idx]
      elsif low.include?(x)
        dex = low.index(x)
        new_dex = (dex + n) % low.length
        low[new_dex]
      else
        x
      end
    end.join
  end

puts cipher("Caesar, can you read this?", 2)
 
