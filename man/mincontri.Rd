\encoding{UTF-8}
\name{mincontri}
\alias{mincontri}

\title{ Minimum number of contributors required to explain a forensic DNA mixture}
\description{
  \code{mincontri} gives the minimum number of contributors required to explain a forensic DNA mixture. This method
  is also known as the maximum allele count as it relies on the maximum number of alleles showed through all available
  loci
}
\usage{
mincontri(mix, loc = NULL)
}

\arguments{
  \item{mix}{ a \code{\link{simumix}}  object }
  \item{loc}{ the loci to consider for the calculation of  the minimum of contributors, default (NULL) corresponds
  to all loci }
}

\value{Integer with minium number of contibutors.}

\author{Hinda Haned \email{hinda@owlsandarrows.nl} }

\seealso{\code{\link{likestim}} for the estimation of the number of contributors through likelihood maximization }
\examples{
data(strusa)
#simulation of 1000 genotypes from the African American allele frequencies
gen<-simugeno(strusa,n=c(1000,0,0))
#5-person mixture
mix5<-simumix(gen,ncontri=c(5,0,0))
#compare
likestim(mix5, strusa, refpop="Afri")
mincontri(mix5)
}
\keyword{htest}
