module OsxPowerSource

  def self.current
    raise("OsxPowerSource only works on Darwin") unless `uname` =~ /Darwin/

    case `system_profiler SPPowerDataType`
    when /Connected: Yes/ then :ac
    when /Connected: No/  then :battery
    end
  end

  def self.on_ac
    yield if current == :ac
  end

  def self.on_battery
    yield if current == :battery
  end

end
