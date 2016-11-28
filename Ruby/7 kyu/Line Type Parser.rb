def line_types lines
  lines.map! do |line|
    if line == nil
      line = :unknown
    elsif line.downcase.include?("alpha")
      line = :alpha
    elsif line.downcase.include?("beta")
      line = :beta
    else
      line = :unknown
    end
  end
  lines
end