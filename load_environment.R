
# Load packages
pks <- c(
    # Data munging 
    "tidyverse","readxl","broom","foreach",
    # Statistical Modeling
    "nlme","lme4","lmerTest","glmmTMB",
    # For model diagnostics
    "car","DHARMa","caret",
    # Posthoc mean comparions 
    "emmeans","multcomp",
    # Data viz
    "ggpubr","scales","png","ggthemes"
    )

suppressWarnings(
    suppressMessages(
        suppressPackageStartupMessages({
            lapply(pks, library, character.only = TRUE)
            })))

citations <- function(includeURL = TRUE) {

    cit.list <- c('base', names(sessionInfo()$otherPkgs))
    
    for(i in 1:length(cit.list)) {
        ref <- citation(cit.list[i])
        if(includeURL == FALSE) {
            ref$url <- NULL;
        }
        print(ref, style = 'text')
        cat('\n')
    }

}

cat('Pivot Bio, Inc.\nThis code performs analyses supporting findings of the paper entitled:\n"Genetic remodeling of soil diazotrophs enables partial replacement of synthetic nitrogen fertilizer with biological nitrogen fixation in maize".\n\n')
cat(timestamp(quiet = TRUE),"\n")
cat("Loaded packages: ",paste0(pks,collapse = ", "),"and their dependencies.\n")
writeLines(capture.output(sessionInfo()), "../session_info.txt")

cat("A complete list of packages used in the analysis is provided in the `packages_citations.txt` file.\n")
writeLines(capture.output(citations()), "../packages_citations.txt")


# Default options for plotting
theme_set(theme_few() + theme(text = element_text(size = 14), strip.text = element_text(size = 16)))
options(repr.plot.width=5, repr.plot.height=5)
myColorPalette <- c("#005AB5","#DC3220")

# Helper functions 
# Check LME model assumptions   
check_assumptions <- function(mod) {

   print(plot(mod)) # resid x pred
   print(plot(density(resid(mod))))  #A density plot
   # Make sure the residuals are normal
   shapiro.test(residuals(mod)) 
}