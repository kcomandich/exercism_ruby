class LogLineParser
  PARSING_REGEX = /\[(?<level>[A-Z]*)\]: (?<message>[\w\s]*)/.freeze

  def initialize(line)
    m = line.match(PARSING_REGEX)

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
