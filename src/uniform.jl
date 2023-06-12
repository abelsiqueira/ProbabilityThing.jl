export Uniform

"""
Unifom distribution.
"""
struct Uniform <: AbstractDistribution
  a :: Float64
  b :: Float64

  function Uniform(a = 0.0, b = 1.0)
    if b <= a
      error("a must be smaller than b")
    end
    return new(a, b)
  end
end

function mean(U :: Uniform)
  return (U.a + U.b) / 2
end

function pdf(D :: Uniform, x)
  if D.a ≤ x ≤ D.b
    return 1 / (D.b - D.a)
  end
  return zero(x)
end

function cdf(D :: Uniform, x)
  if x ≤ D.a
    0.0
  elseif x ≥ D.b
    1.0
  else
    (x - D.a) / (D.b - D.a)
  end
end
