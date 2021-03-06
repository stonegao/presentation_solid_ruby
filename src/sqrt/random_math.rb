class RandomMath
  def sqrt(x)
    hi = x
    lo = 0.0
    while (x - lo*lo) > 0.001
      guess = pick(hi, lo)
      s = guess * guess
      if s > x
        hi = guess
      else
        lo = guess
      end
    end
    lo
  end

  private

  def pick(hi, lo)
    (hi-lo)*rand + lo
  end

end
