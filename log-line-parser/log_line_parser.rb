class LogLineParser
  def initialize(line)
    m = line.match(/\[(?<level>(ERROR|WARNING|INFO))\]: (?<message>[\w\s]*)/)

    @log_level = m[:level].strip.downcase
    @message = m[:message].strip 
  end

  def message
    @message
  end

  def log_level
    @log_level
  end

  def reformat
    "%s (%s)" % [ @message, @log_level ]
  end
end
