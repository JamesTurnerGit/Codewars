class String
  def ipv4_address?
    return false unless (/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/ =~ self)
    return false unless self.gsub(/\d/, "").length == 3
    self.split(".").each do |num|
      return false if num.length > 1 && num[0] == "0"
      return false if num.to_i > 255
    end
    true
  end
end