export Normal

"""
Type for Normal distribution that derives from AbstractDistribution.
"""
struct Normal <: AbstractDistribution
  μ :: Float64 # \mu
  σ :: Float64 # \sigma

  function Normal(μ, σ)
    if σ <= 0
      error("σ must be positive")
    end
    return new(μ, σ)
  end
end

function Normal()
  return Normal(0.0, 1.0)
end

function mean(X :: Normal)
  return X.μ
end

function pdf(D :: Normal, x)
  return exp(-(D.μ - x)^2 / 2 / D.σ^2) / D.σ / √(2π) #\sqrt
end
