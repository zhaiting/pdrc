# 0. data standardization for FM-HCR

#' RE_to_zscore
#'
#' @param dataset input dataframe storing raw reporter expression data - make sure the data is appropriately ordered
#' @param var_inverse input pathway names with inverse relationship between raw reporter expression and pathway activity
#'
#' @return a dataframe with standardized data after natural log transformation and z-score normalization
#' @export
#'
#' @examples
#' dat_og <- data.frame(UG = c(0.05,0.08,0.10), NHEJ = c(23,16,19), HR = c(2,4,6))
#' dataset_std <- RE_to_zscore(dat_og, c("UG"))

RE_to_zscore <- function(dataset, var_inverse = NULL) {

  # Log transformation
  dataset_log <- log(dataset)
  # Sign inversion if var_inverse is provided
  if (!is.null(var_inverse)) {
    dataset_log[, var_inverse] <- -dataset_log[, var_inverse]
  }

  mean_sd_priorscaling <- data.frame(mean = apply(dataset_log, 2, mean, na.rm=T), sd = apply(dataset_log, 2, sd, na.rm=T))

  # Z-score normalization
  dataset_zscore <- scale(dataset_log)

  scaled_list = list(dataset_zscore = dataset_zscore, mean_sd_priorscaling = mean_sd_priorscaling)

  return(scaled_list)
}
