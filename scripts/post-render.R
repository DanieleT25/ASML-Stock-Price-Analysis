output_dir <- "_output"
pres_qmd   <- "presentation.qmd"
pres_html  <- "presentation.html"
dest_file  <- file.path(output_dir, pres_html)

message("Post-render Script Started...")

if (!file.exists(pres_html)) {
    message("presentation.html not found (it was not a book chapter). Rendering it now...")
    quarto::quarto_render(pres_qmd, quiet = FALSE)
}

if (file.exists(pres_html)) {
    if (!dir.exists(output_dir)) {
        dir.create(output_dir)
    }
    
    file.rename(from = pres_html, to = dest_file)
    message(paste("Success: presentation.html moved to", output_dir))
    
} else {
    message("Error: Could not generate or find presentation.html")
}