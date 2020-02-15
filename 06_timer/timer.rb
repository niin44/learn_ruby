class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    seconds = @seconds
    minutes = (@seconds/60)
    
    hours = (@seconds/3600)
    minutes -= hours*60
    seconds -= minutes*60
    seconds -= hours*3600
    if (seconds<10)
      seconds = "0" + seconds.to_s
    end
    if (minutes<10)
      minutes = "0" + minutes.to_s
    end
    if (hours<10)
      hours = "0" + hours.to_s
    end

    return hours.to_s + ":" + minutes.to_s + ":" + seconds.to_s
  end
end
