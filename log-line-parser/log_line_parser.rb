class LogLineParser
  PARSING_REGEX = /\[(?<level>[A-Z]*)\]: (?<message>[\w\s]*)/.freeze

  attr_reader :log_level, :message

  def initialize(line)
    m = line.match(PARSING_REGEX)

    @log_level = m[:level].strip.downcase
    @message = m[:message].strip 
  end

  def reformat
    "%s (%s)" % [ message, log_level ]
  end
end
