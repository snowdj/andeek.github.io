KnitPost <- function(input, base.url = "/") {
  require(knitr)
  opts_knit$set(base.url = base.url)
  fig.path <- paste("../images/blog/", sub(".Rmd$", "", basename(input)), "/", sep="")
  opts_chunk$set(fig.path = fig.path)
  opts_chunk$set(fig.cap = "center")
  render_jekyll()
  knit(input, envir = parent.frame())
}
KnitPost("2015-03-04-clustering.Rmd", '../../../../')
