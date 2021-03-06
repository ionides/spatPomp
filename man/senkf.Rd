% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/enkf.R, R/senkf2.R
\docType{methods}
\name{senkf}
\alias{senkf}
\alias{senkf,ANY-method}
\alias{senkf,missing-method}
\alias{senkf-spatPomp}
\alias{senkf,spatPomp-method}
\title{Ensemble Kalman filters}
\usage{
\S4method{senkf}{spatPomp}(data, Np, h, R, ...,
  verbose = getOption("verbose", FALSE))

\S4method{senkf2}{spatPomp}(data, Np, ..., verbose = getOption("verbose",
  FALSE))
}
\arguments{
\item{data}{either a data frame holding the spatiotemporal data,
or an object of class \sQuote{spatPomp},
i.e., the output of another \pkg{spatPomp} calculation.}

\item{Np}{the number of particles to use.}

\item{h}{function returning the expected value of the observation given the
state.}

\item{R}{matrix; variance of the measurement noise.}

\item{...}{additional arguments supply new or modify existing model characteristics or components.
See \code{\link{pomp}} for a full list of recognized arguments.

When named arguments not recognized by \code{\link{pomp}} are provided, these are made available to all basic components via the so-called \dfn{userdata} facility.
This allows the user to pass information to the basic components outside of the usual routes of covariates (\code{covar}) and model parameters (\code{params}).
See \link[=userdata]{?userdata} for information on how to use this facility.}

\item{verbose}{logical; if \code{TRUE}, diagnostic messages will be printed to the console.}

\item{C}{matrix converting state vector into expected value of the
observation.}
}
\value{
An object of class \sQuote{kalmand_spatPomp}.
}
\description{
A function to perform filtering using the ensemble Kalman filter of Evensen, G. (1994)
}
\references{
Evensen, G. (1994) Sequential data assimilation with a
nonlinear quasi-geostrophic model using Monte Carlo methods to forecast
error statistics Journal of Geophysical Research: Oceans 99:10143--10162

Evensen, G. (2009) Data assimilation: the ensemble Kalman filter
Springer-Verlag.

Anderson, J. L. (2001) An Ensemble Adjustment Kalman Filter for Data
Assimilation Monthly Weather Review 129:2884--2903
}
\seealso{
Other particle filtering methods: \code{\link{senkf2}}

Other \pkg{spatPomp} parameter estimation methods: \code{\link{hippie}},
  \code{\link{senkf2}}
}
\concept{\pkg{spatPomp} parameter estimation methods}
\concept{particle filtering methods}
