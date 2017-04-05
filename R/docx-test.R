library(magrittr)
library(ReporteRs)
mydoc <- docx('senasp-executivo', template = 'vignettes/template.docx')

styles(mydoc)

tab <- vanilla.table(iris[1:10,])

mydoc %<>%
  addFlexTable(tab) %>%
  addPageBreak() %>%
  addPageBreak() %>%
  addParagraph(value = "Hello World!", stylename = "Normal") %>%
  addPlot(function() barplot(1:8, col = 1:8))

writeDoc(mydoc, file = "senasp_exec.docx")
