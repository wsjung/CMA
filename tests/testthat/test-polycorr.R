context("polycorr")

test_that("polycorr() gives correct errors", {
  ############################## TEST TOY DATASET ###############################
  # load datasets
  trt1 <- read.csv("./data/toydataset/trt1.csv")
  trt2 <- read.csv("./data/toydataset/trt2.csv")
  trt3 <- read.csv("./data/toydataset/trt3.csv")
  vars <- c("trt1","trt2","trt3")

  # merge datasets
  data <- merge(
    select(trt1, markname, pval),
    select(trt2, markname, pval),
    by='markname'
  ) %>% merge(
    select(trt3, markname, pval),
    by='markname'
  )
  colnames(data)[-1] = vars

  expect_error(polycorr())
  expect_error(polycorr(data))
})
