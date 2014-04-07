def yes_case
  n = 0
  h = {'yes' => 23, 'b' => 'travel', 'yesterday' => 34, 5 => '234', :yesss => :fg, try: 30, key: 'some value', 'yesterday1'=> 34, 'yesteryear' => 2014}
  h.each do |k,v|
    if k.to_s[0,3] == 'yes'
      n = n + 1
    end
  end
  n
end

H = {'yes' => 23, 'b' => 'travel', 'yesterday' => 34, 5 => '234', :yesss => :fg, try: {'yesterday1'=> 34, 'yesteryear' => 2014}, key: [{'yes' => 23, 'b' => 'travel'}], 'yesterday1'=> 34, 'yesteryear' => 2014}
def symbol_case(hash)
  result_hash = {}
  hash.each do |k, v|
    k = k.to_s.to_sym
    if hash[k].is_a?(Hash)
      result_hash[k] = symbol_case(hash[k])
    elsif hash[k].is_a?(Array)
      hash[k].each do |el|
        result_hash[k] = symbol_case(el)
      end
    else
      result_hash[k] = v
    end
  end
  result_hash
end
