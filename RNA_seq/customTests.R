# Put custom tests in this file.
      
      # Uncommenting the following line of code will disable
      # auto-detection of new variables and thus prevent swirl from
      # executing every command twice, which can slow things down.
      
      # AUTO_DETECT_NEWVAR <- FALSE
      
      # However, this means that you should detect user-created
      # variables when appropriate. The answer test, creates_new_var()
      # can be used for for the purpose, but it also re-evaluates the
      # expression which the user entered, so care must be taken.

test_counts <- function() {
  data <- read.delim(paste(swirl:::swirl_courses_dir(), "/BMB511/RNA_seq/RNAseq_counts.txt", sep=""))
  return(identical(data, counts))
}

test_metadata <- function() {
  data <- read.delim(paste(swirl:::swirl_courses_dir(), "/BMB511/RNA_seq/RNAseq_metadata.txt", sep=""))
  return(identical(data, metadata))
}

test_dds <- function(x) {
  counts_corr <- read.delim(paste(swirl:::swirl_courses_dir(), "/BMB511/RNA_seq/RNAseq_counts.txt", sep=""))
  metadata_corr <- read.delim(paste(swirl:::swirl_courses_dir(), "/BMB511/RNA_seq/RNAseq_metadata.txt", sep=""))
  design_corr <- model.matrix(~ metadata_corr$condition)
  dds_correct <- DESeqDataSetFromMatrix(countData = counts_corr, colData = metadata_corr, design = design_corr)
  return(all(c(identical(dds_correct@design[,1],dds@design[,1]),identical(dds_correct@design[,2],dds@design[,2]), identical(dds@colData, dds_correct@colData), identical(dds@assays@data$counts, dds_correct@assays@data$counts))))
}

