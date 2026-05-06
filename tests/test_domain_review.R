source("R/domain_review.R")

item <- list(signal=41, slack=36, drag=14, confidence=93)
stopifnot(domain_review_score(item) == 169)
stopifnot(domain_review_lane(item) == "ship")
