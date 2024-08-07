% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/comet_list_to_df.R
\name{comet_list_to_df}
\alias{comet_list_to_df}
\title{comet_list_to_df}
\usage{
comet_list_to_df(results_list, method)
}
\arguments{
\item{results_list}{result list generated by loop_data}

\item{method}{method used to fit the model}
}
\value{
summary dataframe one row per sample
}
\description{
comet_list_to_df
}
\examples{
in_data <- data.frame(Sample = c("001","002","003"),
c_0 = c(40,50,60), c_15=c(25,27,30), c_30=c(20,21,22), c_60=c(15,17,18), c_120=c(12,11,10))
sample_list <- loop_comet_data(in_data, "nls")
sample_dat <- comet_list_to_df(sample_list, "nls")

}
