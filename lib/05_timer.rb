def time_string(sec)
    hour,minute,second = 0 , 0 , 0

    hour = sec / 3600
    minute = (sec / 60) %60
    second = sec %60

    if hour < 10
        hour = "0" + hour.to_s
    end
    if minute < 10
        minute = "0" + minute.to_s
    end
    if second < 10
        second = "0" + second.to_s
    end
    return "#{hour}:#{minute}:#{second}"
end

