
#check whether the file is RDS by trying to open it and wrapping it in tryCatch
is.RDS = function(x) {
  tryCatch({
    readRDS(x)
    return(TRUE)
  }, error = function(e) {
    return(FALSE)
  })
}

#check whether the file is GIFT by trying to open it and wrapping it in tryCatch
is.GIFT = function(x) {
  tryCatch({
    readLines(x)
    return(TRUE)
  }, error = function(e) {
    return(FALSE)
  }, warning = function(w) {
    return(FALSE)
  })
}
