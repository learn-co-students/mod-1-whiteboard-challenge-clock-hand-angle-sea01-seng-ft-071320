require 'pry'

def clock_angle(time)
  hour, minute = time.split(':')

  hour = 0 if hour.to_i == 12
  minute = 0 if minute.to_i == 60

  minute_angle = minute.to_f * 6
  hour_angle = (hour.to_f * 30) + (0.5 * minute.to_f)

  # binding.pry
  
  result = -(minute_angle - hour_angle)
  result < 0 ? result + 360 : result
end
