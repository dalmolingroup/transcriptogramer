% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllGenerics.R, R/AllMethods.R
\docType{methods}
\name{enrichmentPlot}
\alias{enrichmentPlot}
\alias{enrichmentPlot,Transcriptogram-method}
\alias{enrichmentPlot-method}
\title{Projects Gene Ontology terms on the ordering}
\usage{
enrichmentPlot(object, nCores = 1L, nTerms = 1L, GOIDs = NULL,
  title = "Enrichment", alpha = 0.15, colors = NULL)

\S4method{enrichmentPlot}{Transcriptogram}(object, nCores = 1L,
  nTerms = 1L, GOIDs = NULL, title = "Enrichment", alpha = 0.15,
  colors = NULL)
}
\arguments{
\item{object}{An object of class Transcriptogram.}

\item{nCores}{An integer number, referring to the number of processing cores
to be used; or a logical value, TRUE indicating that all processing cores
should be used, and FALSE indicating the use of just one processing core.
The default value of this argument is 1.}

\item{nTerms}{An integer number referring to the number of top terms from
each cluster. The default value of this argument is 1.}

\item{GOIDs}{A character vector containing the Gene Ontology
accessions to be plotted. If NULL, the top \code{nTerms} of each cluster
will be used.}

\item{title}{An overall title for the plot. The default value of this
argument is "Enrichment"}

\item{alpha}{The alpha value indicates the color transparency of the clusters regions.
This value goes from 0 to 1, where 0 is completely transparent, and 1 is opaque.}

\item{colors}{Color vector used to distinguish the clusters. If NULL, the rainbow palette will be used
to generate the colors. The color vector must contain a color for each cluster.}
}
\value{
This method returns an ggplot2 object.
}
\description{
Plots the ratio (number of genes related to a term inside the
window/total number of genes in the window) from a set of Gene Ontology terms.
}
\examples{
transcriptogram <- transcriptogramPreprocess(association, Hs900, 50)
\dontrun{
transcriptogram <- transcriptogramStep1(transcriptogram, GSE9988, GPL570)
transcriptogram <- transcriptogramStep2(transcriptogram)
levels <- c(rep(FALSE, 3), rep(TRUE, 3))
transcriptogram <- differentiallyExpressed(transcriptogram, levels, 0.01)
transcriptogram <- clusterEnrichment(transcriptogram, species = "Homo sapiens",
pValue = 0.005)
enrichmentPlot(transcriptogram)
}

}
\seealso{
\link[transcriptogramer:differentiallyExpressed-method]{differentiallyExpressed},
\link[transcriptogramer]{transcriptogramPreprocess},
\link[transcriptogramer]{GSE9988},
\link[transcriptogramer]{GPL570},
\link[transcriptogramer]{Hs900},
\link[transcriptogramer]{HsBPTerms},
\link[transcriptogramer]{association},
\link[transcriptogramer:transcriptogramStep1-method]{transcriptogramStep1},
\link[transcriptogramer:transcriptogramStep2-method]{transcriptogramStep2},
\link[transcriptogramer:clusterEnrichment-method]{clusterEnrichment}
}
\author{
Diego Morais
}
