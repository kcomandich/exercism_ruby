class Tournament
  HEADER = "Team                           | MP |  W |  D |  L |  P\n".freeze

  def self.tally(input)

    teams = []
    matches = input.scan(/([\w\s]*);([\w\s]*);(win|loss|draw)/)

    matches.each do |m|
      newteam1 = false
      newteam2 = false
      name1 = m[0].strip
      name2 = m[1].strip

      known = teams.select {|t| t.name == name1}
      if known.size > 0 
        team1 = known[0]
      else
        team1 = Team.new(name1)
        newteam1 = true
      end

      known = teams.select {|t| t.name == name2}
      if known.size > 0 
        team2 = known[0]
      else
        team2 = Team.new(name2)
        newteam2 = true
      end

      update_scores(team1, team2, m[2])

      teams << team1 if newteam1
      teams << team2 if newteam2
    end

    result = ''
    result << HEADER
    teams.sort_by{ |t| [-t.points, t.name] }.each do |t|
      result << t.name.ljust(31) << "|  %d |  %d |  %d |  %d |  %d\n" % [ t.matches, t.wins, t.draws, t.loses, t.points ]
    end
    result
  end

  def self.update_scores(team1, team2, result)
    team1.matches += 1
    team2.matches += 1

    if result == 'win'
      team1.wins += 1
    elsif result == 'loss'
      team2.wins += 1
    elsif result == 'draw'
      team1.draws += 1
      team2.draws += 1
    end
  end
end

class Team
  def initialize(name)
    @name = name
    @matches = 0
    @wins = 0
    @draws = 0
  end

  def name
    @name
  end

  def matches
    @matches
  end

  def matches=(num)
    @matches = num
  end

  def wins
    @wins
  end

  def wins=(num)
    @wins = num
  end

  def draws
    @draws
  end

  def draws=(num)
    @draws = num
  end

  def loses
    @matches - @wins - @draws
  end

  def points
    (@wins * 3) + @draws
  end
end
