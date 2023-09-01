set.seed(42)
variant <- DNAString("GTCCATGACACTGGTCGTCCATGGACTGCGATACAAGTTACCTT")
enhancer <- DNAString("GTCCTAGATACTAGAGTCGTCTCCTCTGGTCGTCTAGCGAGCGGTTCAAGTTACCTTGATAGACACAGATACAGTTTGAGATACATAGACACATAGAGTAGAGACACATGA")
real.alignment <- pairwiseAlignment(pattern = variant, subject = enhancer, type = "local", substitutionMatrix = scoring, gapOpening = 2, gapExtension = 2, scoreOnly = TRUE)

# Create a data.frame to store results
random.scores <- data.frame()

# Create a loop that runs 100 times (called an iteration)
# For each iteration: Shuffle the subject sequence, calculate the alignment score and store it in the data.frame
for (iteration in 1:100) {
  randomized.enhancer <- sample(enhancer)
  alignment <- pairwiseAlignment(pattern = variant, subject = randomized.enhancer, type = "local", substitutionMatrix = scoring, gapOpening = 2, gapExtension = 2, scoreOnly=TRUE)
  random.scores[iteration,1] <- alignment
}

# Make a histogram of the score of aligning randomized sequences
hist(random.scores[,1], breaks=8, xlab = "Alignment score", las = 1, main = paste("Real alignment score:", real.alignment, sep=" "), xlim = c(5,20)) 
