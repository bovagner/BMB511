# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

if (any(loadedNamespaces() %in% "BiocManager")) { detach("package:BiocManager", unload = TRUE) } 
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
