class LogLineParser
  def initialize(line)
    @line = line
    tmp = @line.match(/\[(ERROR|WARNING|INFO)\]: ([\w\s]*)/)
    @log_level = tmp[1].strip.downcase
    @message = tmp[2].strip 
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
