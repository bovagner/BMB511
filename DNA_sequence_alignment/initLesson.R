if (any(loadedNamespaces() %in% "BiocManager")) { detach("package:BiocManager", unload = TRUE) } 
if (any(loadedNamespaces() %in% "pwalign")) { detach("package:pwalign", unload = TRUE) } 
if (any(loadedNamespaces() %in% "Biostrings")) { detach("package:Biostrings", unload = TRUE) } 
all_variants <- c("GTCCATGACACTGGTCGTCCATGGACTGCGATACAAGTTACCTT", "GTCCATCTGACTGGTCGTCCATGGACTGCGATACAAGTTACCTT",
                  "GTCCATGACACTCCTCGTCCATGGACTGCGATACAAGTTACCTT",
                  "GTCCATCTCACTCCTCGTCCATGGACTGCGATACAAGTTACCTT",
                  "GTCCATCTGACTGGTCGTCCATGGACTGCGATACAAGTTACCTT",
                  "GTCCATCTGACTCCTCGTCCATGGACTGCGATACAAGTTACCTT",
                  "GTCCATCACACTGGTCGTCCATGGACTGCGATACAAGTTACCTT",
                  "GTCCATCACACTCCTCGTCCATGGACTGCGATACAAGTTACCTT",
                  "GTCCATCAGACTCCTCGTCCATGGACTGCGATACAAGTTACCTT",
                  "GTCCATGAGACTGGTCGTCCATGGACTGCGATACAAGTTACCTT")
