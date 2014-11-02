class Numeric

  def percent_of(n)
    percent = self.to_f / n.to_f * 100.0
    percent.to_i
  end

end
