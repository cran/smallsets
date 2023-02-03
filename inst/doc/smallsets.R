## ---- eval=FALSE--------------------------------------------------------------
#  # run this code

## ---- eval=FALSE, class.source="view-only"------------------------------------
#  # don't run this code

## ---- comment=''--------------------------------------------------------------
library(smallsets)

head(s_data)

## ---- fig.width=7, fig.height=3, fig.retina=2, fig.align="center"-------------
library(smallsets)

set.seed(145)

Smallset_Timeline(data = s_data, 
                  code = system.file("s_data_preprocess.R", package = "smallsets"))

## ---- code = readLines(system.file("s_data_preprocess.R", package = "smallsets")), eval=FALSE, class.source="view-only"----
#  # smallsets start s_data caption[Remove rows where C2
#  # is FALSE.]caption
#  s_data <- s_data[s_data$C2 == TRUE, ]
#  
#  s_data$C6[is.na(s_data$C6)] <- mean(s_data$C6, na.rm = TRUE)
#  # smallsets snap s_data caption[Replace missing values in C6 and
#  # C8 with column means. Drop C7 because there are too many
#  # missing values.]caption
#  s_data$C8[is.na(s_data$C8)] <- mean(s_data$C8, na.rm = TRUE)
#  s_data$C7 <- NULL
#  
#  s_data$C9 <- s_data$C3 + s_data$C4
#  # smallsets end s_data caption[Create a new column,
#  # C9, by summing C3 and C4.]caption

## ---- eval=FALSE--------------------------------------------------------------
#  Smallset_Timeline(data = s_data,
#                    code = system.file("s_data_preprocess.py", package = "smallsets"))

## ---- fig.keep="none"---------------------------------------------------------
Smallset_Timeline(data = s_data, 
                  code = system.file("s_data_preprocess.R", package = "smallsets"), 
                  rowCount = 7, rowSelect = NULL)

## ---- eval=FALSE, fig.keep="none"---------------------------------------------
#  Smallset_Timeline(data = s_data,
#                    code = system.file("s_data_preprocess.R", package = "smallsets"),
#                    rowCount = 5, rowSelect = 1, rowReturn = TRUE)

## ---- echo=FALSE, fig.keep="none", comment=''---------------------------------
Smallset_Timeline(data = s_data, 
                  code = system.file("s_data_preprocess.R", package = "smallsets"),
                  rowNums = c(27, 42, 95, 96, 99),
                  rowReturn = T)

## ---- fig.width = 7, fig.height = 3, fig.align='center'-----------------------
Smallset_Timeline(data = s_data, 
                  code = system.file("s_data_preprocess.R", package = "smallsets"), 
                  rowCount = 5, rowNums = c(27, 42, 95, 96, 99))

## ---- eval=FALSE--------------------------------------------------------------
#  Smallset_Timeline(data = s_data,
#                    code = system.file("s_data_preprocess.R", package = "smallsets"),
#                    rowSelect = 2, rowReturn = T)

## ---- echo=FALSE, fig.width = 7, fig.height = 3, fig.align='center', comment=''----
Smallset_Timeline(data = s_data,
                  code = system.file("s_data_preprocess.R", package = "smallsets"),
                  rowNums = c(3, 32, 80, 97, 99),
                  rowReturn = T)

## ---- fig.width = 7, fig.height = 4, fig.align='center'-----------------------
set.seed(145)

Smallset_Timeline(
  data = s_data,
  code = system.file("s_data_preprocess.R", package = "smallsets"),
  colours = list(
    same = "#E6E3DF",
    edit = "#FFC500",
    add = "#5BA2A6",
    delete = "#DDC492"
  ),
  printedData = TRUE,
  truncateData = 4,
  ghostData = FALSE,
  font = "Palatino",
  sizing = sets_sizing(data = 1.5),
  labelling = sets_labelling(labelCol = "darker", labelColDif = 1)
)

## ---- fig.width = 5, fig.height = 6, fig.align='center'-----------------------
set.seed(145)

Smallset_Timeline(
  data = s_data,
  code = system.file("s_data_preprocess.R", package = "smallsets"),
  colours = 3,
  ghostData = TRUE,
  missingDataTints = TRUE,
  font = "Arial Rounded MT Bold",
  spacing = sets_spacing(
    captions = 2,
    rows = 2,
    degree = 45,
    header = 1
  ),
  sizing = sets_sizing(
    legend = 7
    )
)

## ---- fig.keep="none", comment=''---------------------------------------------
set.seed(145)

Smallset_Timeline(data = s_data, 
                  code = system.file("s_data_preprocess.R", package = "smallsets"), 
                  altText = TRUE)

## ---- code = readLines(system.file("s_data_preprocess_resume.R", package = "smallsets")), eval=FALSE, class.source="view-only"----
#  # smallsets start s_data caption[Remove rows where C2
#  # is FALSE.]caption
#  s_data <- s_data[s_data$C2 == TRUE,]
#  
#  s_data$C6[is.na(s_data$C6)] <- mean(s_data$C6, na.rm = TRUE)
#  # smallsets snap s_data caption[Replace missing values in C6 and
#  # C8 with column means. Drop C7 because there are too many
#  # missing values.]caption
#  s_data$C8[is.na(s_data$C8)] <- mean(s_data$C8, na.rm = TRUE)
#  s_data$C7 <- NULL
#  
#  # smallsets snap s_data caption[Create a new column,
#  # C9, by summing C3 and C4.]caption
#  s_data$C9 <- s_data$C3 + s_data$C4
#  
#  # smallsets resume s_data caption[Ran the analysis
#  # and decided to make a change.]caption
#  t <- quantile(s_data$C9, c(0:3 / 3))
#  s_data$C10 = with(s_data, cut(
#    C9,
#    t,
#    include.lowest = T,
#    labels = c("Low", "Med", "High")
#  ))
#  # smallsets end s_data caption[Create a new categorical
#  # column, C10, based on C9 terciles.]caption

## ---- fig.width = 7, fig.height = 2, fig.align='center', fig.retina = 2-------
set.seed(145)

Smallset_Timeline(data = s_data, 
                  code = system.file("s_data_preprocess_resume.R", package = "smallsets"), 
                  sizing = sets_sizing(
                    columns = 1.8,
                    captions = 1.8,
                    legend = 7,
                    icons = .8
                    ),
                  spacing = sets_spacing(
                    captions = 3,
                    degree = 60,
                    header = 3.5,
                    right = 2
                    )
                  )

