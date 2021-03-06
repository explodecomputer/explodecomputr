% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/simulate_phenotypes.R
\name{make_phen}
\alias{make_phen}
\title{Create a phenotype using arbitrary number of known causal inputs}
\usage{
make_phen(effs, indep, vy = 1, vx = rep(1, length(effs)))
}
\arguments{
\item{effs}{Array of beta values for each input. Leave the vx and vy values to default (=1) to allow effs to be equal to the correlation between y and each x}

\item{indep}{Matrix of independent variables corresponding to effs}

\item{vy=1}{The output variance of y}

\item{vx=rep(1,}{length(effs)) The desired scaled variance of x}
}
\value{
Numeric array, simulated phenotype
}
\description{
For a set of \code{x} variables and effect sizes for each variable (\code{b})
\code{y} is constructed such that
\code{y = Xb + e}
Given that the variance explained in \code{y} by \code{X}, is
\code{r^2 = sum(b * var(x) / (sqrt(x)*sqrt(y)))}
we can model \code{e ~ N(0, 1 - r^2)}
}
\examples{
\dontrun{
g1 <- make_geno(1000, 0.5)
g2 <- make_geno(1000, 0.3)
x1 <- rnorm(1000)
x2 <- rnorm(1000)
y <- make_phen(effs=c(0.2, 0.1, 0.15, 0.4), cbind(g1, g2, x1, x2))

}
}

