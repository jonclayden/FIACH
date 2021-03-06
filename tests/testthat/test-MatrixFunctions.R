context("Matrix Operations")

test_that("Matrix statistics give correct answers", {
  
  mat<-matrix(1:11,ncol=100,nrow = 11)
  
  cMedians<-colMedian(mat)
  rMedians<-rowMedian(mat)
  
  cMads<-colMad(mat)
  rMads<-rowMad(mat)
  
  csd<-colsd(mat)
  rsd<-rowsd(mat)
  
  expect_equal(cMedians,rep(6,100),tolerance=1e-5)
  expect_equal(rMedians,1:11,tolerance=1e-5)
  
  expect_equal(cMads,rep(4.4478,100),tolerance=1e-5)
  expect_equal(rMads,rep(0,11),tolerance=1e-5)
  
  expect_equal(csd,rep(3.316625,100),tolerance=1e-5)
  expect_equal(rsd,rep(0,11),tolerance=1e-5)
  
})