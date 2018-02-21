require("minfi", quietly = TRUE)
require(IlluminaHumanMethylation450kanno.ilmn12.hg19, quietly = TRUE)

args <- commandArgs(trailingOnly = TRUE)

input = args[1]
output = args[2]

RSet <- get(load(input))

GRSet <- mapToGenome(RSet)

save(GRSet,file = output)
