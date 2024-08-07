% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prepare_comet_data.R
\name{prepare_comet_data}
\alias{prepare_comet_data}
\title{prepare_comet_data}
\usage{
prepare_comet_data(dataset, sample_name)
}
\arguments{
\item{dataset}{input dataframe storing comet kinetic data, requires columns: Sample and F_t values at different time points}

\item{sample_name}{input individual sample name}
}
\value{
a formatted dataframe with time, F_t, and sample name
}
\description{
prepare_comet_data
}
\examples{
in_data <- data.frame(Sample = c("001","002","003"),
c_0 = c(40,50,60), c_15=c(25,27,30), c_30=c(20,21,22), c_60=c(15,17,18), c_120=c(12,11,10))
out_data <- prepare_comet_data(in_data, "001")
}
