# Deattach loaded packages
if (any(grepl("BiocManager", search()))) { detach("package:BiocManager", unload = TRUE) } 
if (any(grepl("ComplexHeatmap", search()))) { detach("package:ComplexHeatmap", unload = TRUE) }
if (any(grepl("grex", search()))) { detach("package:grex", unload = TRUE) } 
if (any(grepl("enrichR", search()))) { detach("package:enrichR", unload = TRUE) }
if (any(grepl("DESeq2", search()))) { detach("package:DESeq2", unload = TRUE) }

# Install required packages
message("\n| Great choice! Installing the packages required for this module. It might take a few minutes. \n")
if (!is.element("BiocManager", installed.packages())) { out <- capture.output(suppressMessages(install.packages("BiocManager", quiet = TRUE))) }
if (!is.element("grex", installed.packages()))  { out <- capture.output(suppressMessages(install.packages("grex", quiet = TRUE))) }
if (!is.element("enrichR", installed.packages()))  { out <- capture.output(suppressMessages(install.packages("enrichR", quiet = TRUE))) }
if (!is.element("DESeq2", installed.packages()))  { out <- capture.output(suppressMessages(BiocManager::install("DESeq2", update = FALSE, ask = FALSE, quiet = TRUE, verbose = FALSE))) }
if (!is.element("ComplexHeatmap", installed.packages()))  { out <- capture.output(suppressMessages(BiocManager::install("ComplexHeatmap", update = FALSE, ask = FALSE, quiet = TRUE, verbose = FALSE))) }

# Cleanup if necessary
if (exists("out")) { rm(out) }

