# Deattach loaded packages
if (any(loadedNamespaces() %in% "BiocManager")) { detach("package:BiocManager", unload = TRUE) } 
if (any(loadedNamespaces() %in% "ComplexHeatmap")) { detach("package:ComplexHeatmap", unload = TRUE) }
if (any(loadedNamespaces() %in% "grex")) { detach("package:grex", unload = TRUE) } 
if (any(loadedNamespaces() %in% "enrichR")) { detach("package:enrichR", unload = TRUE) }
if (any(loadedNamespaces() %in% "DESeq2")) { detach("package:DESeq2", unload = TRUE) }

# Install required packages
if (!is.element("BiocManager", installed.packages())) { out <- capture.output(suppressMessages(install.packages("BiocManager", quiet = TRUE))) }
if (!is.element("grex", installed.packages()))  { out <- capture.output(suppressMessages(install.packages("grex", quiet = TRUE))) }
if (!is.element("enrichR", installed.packages()))  { out <- capture.output(suppressMessages(install.packages("enrichR", quiet = TRUE))) }
if (!is.element("DESeq2", installed.packages()))  { out <- capture.output(suppressMessages(BiocManager::install("DESeq2", update = FALSE, ask = FALSE, quiet = TRUE, verbose = FALSE))) }
if (!is.element("ComplexHeatmap", installed.packages()))  { out <- capture.output(suppressMessages(BiocManager::install("ComplexHeatmap", update = FALSE, ask = FALSE, quiet = TRUE, verbose = FALSE))) }

# Cleanup if necessary
if (exists("out")) { rm(out) }

# Define function to load data
.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}