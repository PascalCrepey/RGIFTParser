
#check whether the file is RDS by trying to open it and wrapping it in tryCatch
is.RDS = function(x) {
  tryCatch({
    readRDS(x)
    TRUE
  }, error = function(e) {
    FALSE
  })
}

#check whether the file is GIFT by trying to open it and wrapping it in tryCatch
is.GIFT = function(x) {
  tryCatch({
    readLines(x)
    TRUE
  }, error = function(e) {
    FALSE
  }, warning = function(w) {
    FALSE
  })
}
