export pdf, cdf, mean

"""
    y = pdf(D :: AbstractDistribution, x)

Computes the probability density function of D at value x.

## Inputs

- `D :: AbstractDistribution`: The probability variable.
"""
function pdf end

"""
    mean

"""
function mean end

function cdf(D :: AbstractDistribution, x)
  integral, err = quadgk(
    y -> pdf(D, y),
    -Inf,
    x,
  )
  return integral
end
