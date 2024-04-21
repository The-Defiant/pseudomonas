testthat::test_that("test reading file", {
  test_file <- testthat::test_path("data/test_file1.R")
  result <- pseudomonas::parse_file(test_file)
  testthat::expect_length(result, 6)
  testthat::expect_equal(result[4], "file <- \"some_file\"")
  testthat::expect_equal(result[5], "read_csv(file)")
})
