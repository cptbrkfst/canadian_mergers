# Instantiate mergers from list
class CanadianMergers::Mergers

  def self.all
    puts <<-DOC

    |           Parties to the Transaction           | Industry |  Result |
    | --------------------------------------------------------------------|
    | Acklands-Grainger Inc. / WFS Enterprises Ltd.  |   4189   |   NAL   |
    | --------------------------------------------------------------------|
    | AECOM Technology Corporation / URS Corporation |   5413   |   NAL   |
    | --------------------------------------------------------------------|

    DOC
  end

end
