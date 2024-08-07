% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/batch_correction.R
\name{batch_correction}
\alias{batch_correction}
\title{batch_correction}
\usage{
batch_correction(dataset, pheno, covariate = NULL, batch)
}
\arguments{
\item{dataset}{input dataframe storing standardized data for batch correction - make sure the rows are appropriately ordered}

\item{pheno}{input dataframe storing phenotype data for batch correction - make sure the rows are appropriately ordered}

\item{covariate}{input covariate names in pheno whose variations need to be retained}

\item{batch}{input batch column name in pheno}
}
\value{
a dataframe with batch corrected data after ComBat
}
\description{
batch_correction
}
\examples{
dat_og <- data.frame(UG = c(0.05,0.08,0.10), NHEJ = c(23,16,19), HR = c(2,4,6))
list_std <- RE_to_zscore(dat_og, c("UG"))
dat_std <- list_std$dataset_zscore
pheno <- data.frame(Sample = c("001","002","003"),
age = c(34,36,57), sex = c("M","F","M"), batch = c("A","B","A"))
dataset_batch <- batch_correction(dat_std, pheno, batch="batch")

}
