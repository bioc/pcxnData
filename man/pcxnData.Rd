\name{pcxnData}
\alias{Introduction to pcxnData}
\alias{pcxnData}
\alias{cp_gs_v5.1}
\alias{gobp_gs_v5.1}
\alias{h_gs_v5.1}
\alias{pathCor_CPv5.1_dframe}
\alias{pathCor_GOBPv5.1_dframe}
\alias{pathCor_Hv5.1_dframe}
\alias{pathCor_pathprint_v1.2.3_dframe}
\alias{pathprint.Hs.gs}
\docType{package}
\title{Correlation coefficients and p values between pre-defined pathway/gene 
sets}
\description{
The pcxnData package contains correlation coefficients and p values between
pre-defined gene sets within MSigDB H hallmark gene sets, MSigDB C2 CP 
(Canonical pathways), MSigDB C5 GO BP gene sets and Pathprint respectively
}
\details{
\tabular{ll}{
Package: \tab pcxnData\cr
Type: \tab Package\cr
Version: \tab 1.0.0\cr
Date: \tab 2017-10-31\cr
License: \tab MIT\cr
}
}
\author{
Sokratis Kariotis, Yered Pita-Juarez, Winston Hide, Wenbin Wei
\cr Maintainer: Sokratis Kariotis \email{s.kariotis@sheffield.ac.uk}
}
\value{
Includes dataframes containing correlation between two pathways withdrawn from 
one of four collections: MSigDB H hallmark gene sets, 
MSigDB C2 CP (Canonical pathways), MSigDB C5 GO BP gene sets and Pathprint. 
For each of the above collections the package includes a list that holds the 
members of each pathway/gene set. 

}
\references{
Pita-Juarez Y.,Altschuler G.,Kariotis S.,Wei W.,Koler K.,Tanzi R.
and W. A. Hide (2017). "The Pathway Coexpression Network: Revealing Pathway
Relationships."
}
\keyword{ package }
\usage{
data(list = c("cp_gs_v5.1", "gobp_gs_v5.1", "h_gs_v5.1","pathprint.Hs.gs",
    "pathCor_CPv5.1_dframe","pathCor_GOBPv5.1_dframe","pathCor_Hv5.1_dframe",
    "pathCor_pathprint_v1.2.3_dframe"))
}

\format{
A data frame contains the following columns.
\describe{
    \item{\code{Pathway.A / Pathway.B}}{Columns that hold
    a pathway/gene set name}
    \item{\code{PathCor}}{Correlation between two pathways}
    \item{\code{p.value}}{P-value of the correlation}
    \item{\code{Overlap.Coefficient}}{ The overlap coefficient between two gene 
    sets is the size of the intersection divided by the size of the smaller of 
    the two sets. If one of the sets is a subset of the other, the overlap 
    coefficient is 1. }
    \item{\code{p.Adjust}}{The adjusted p-value of the correlation}
}
}

\examples{

# Load all data
data(list = c("cp_gs_v5.1", "gobp_gs_v5.1", "h_gs_v5.1","pathprint.Hs.gs",
    "pathCor_CPv5.1_dframe","pathCor_GOBPv5.1_dframe","pathCor_Hv5.1_dframe",
    "pathCor_pathprint_v1.2.3_dframe"))

# Load an object containing correlation coefficients,p values, overlap
# coefficients and adjusted p values
data("pathCor_pathprint_v1.2.3_dframe")

# Load an object containing the gene members of each gene set in a collection
data("cp_gs_v5.1")

# Objects in environment
objects()

# Object types are data.frame or list
class(pathCor_pathprint_v1.2.3_dframe)
class(cp_gs_v5.1)

# Get the first parts of the objects
head(pathCor_pathprint_v1.2.3_dframe)
head(cp_gs_v5.1)

# Get dimensions of an object
dim(pathCor_pathprint_v1.2.3_dframe)

}

\keyword{datasets}