module ApplicationHelper
  def resource_name
    :user
  end

  def resource
      @resource ||= User.new
  end

  def resource_class
      User
  end

  def devise_mapping
      @devise_mapping ||= Devise.mappings[:user]
  end

  def relative_time(start_time)
    diff_seconds = (Time.now - start_time).to_i
    case diff_seconds
      when 0 .. 59
        return "#{diff_seconds} 秒前"
      when 60 .. (3600-1)
        return "#{diff_seconds/60} 分钟前"
      when 3600 .. (3600*24-1)
        return "#{diff_seconds/3600} 小时前"
      when (3600*24) .. (3600*24*30)
        return "#{diff_seconds/(3600*24)} 天前"
      else
        return start_time.strftime("%Y-%m-%d")
    end
  end

end
