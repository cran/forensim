\encoding{UTF-8}
\name{likestim}
\alias{likestim}

\title{ Maximum likelihood estimation of the number of contributors to a forensic DNA mixture
 for a set of loci}
\description{
  The \code{likestim} function gives  multiloci estimation of the number of contributors to a forensic DNA mixture
  using likelihood maximization.
}
\usage{
likestim(mix, freq, refpop = NULL, theta = NULL, loc=NULL)
}

\arguments{
  \item{mix}{ a \code{simumix} object}
  \item{freq}{ a \code{tabfreq} object containing the allele frequencies to use for the calculation}
  \item{refpop}{ the reference population from which to extract the allele frequencies used in the likelihood 
  calculation.   If \code{tabfreq} contains more than one population, \code{refpop} must be 
  specified, otherwise, \code{refpop} is set to default (NULL). }
  \item{theta}{a float from [0,1[ giving Wright's  Fst coefficient. \code{theta}  accounts for population subdivision while 
  computing the likelihood of the data. }
  \item{loc}{ loci to be considered in the estimation. Default (set to NULL) corresponds to all loci. }
}
\details{
  The number of contributors which maximizes the likelihood of the data observed in the mixture is searched in the discrete
  interval [1,6]. In most cases this interval is a plausible range for the number of contributors.
  
}

\value{
A matrix of dimension  1 x 2, the first column, \code{max}, gives the maximum likelihood estimation  of the number of contributors, 
the second column
gives the corresponding likelihood value \code{maxvalue}.

}
\references{
Haned H, Pene L, Lobry JR, Dufour AB, Pontier D.
Estimating the number of contributors to forensic DNA mixtures: Does maximum likelihood 
perform better than maximum allele count? \emph{ J Forensic Sci}, accepted 2010.\cr

Egeland T, Dalen I, Mostad PF. 
Estimating the number of contributors to a DNA profile. \emph{Int J Legal Med} 2003, 117: 271-275 \cr

Curran JM, Triggs CM, Buckleton J, Weir BS. 
Interpreting DNA Mixtures in Structured Populations. \emph{ J Forensic Sci} 1999, 44(5): 987-995
}
\author{Hinda Haned  <hinda@owlsandarrows.nl>}



\seealso{  \code{\link{likestim.loc}} for maximum of likelihood estimations per locus}
\examples{
data(strusa)
#simulation of 1000 genotypes from the Hispanic allele frequencies
gen<-simugeno(strusa,n=c(0,0,100))
#4-person mixture
mix4 <- simumix(gen,ncontri=c(0,0,4))
likestim(mix4,strusa,refpop="Hisp")

}

\keyword{htest}
